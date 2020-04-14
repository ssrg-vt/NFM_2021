	.section	.text
	.align	32
	#Procedure 0x401dc0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_90
	call	setlocale
	mov	edi, OFFSET FLAT:label_96
	mov	esi, OFFSET FLAT:label_97
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_96
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	lea	r14, [rsp + 0x50]
	jmp	.label_110
.label_3283:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + word_regex],  rax
	cmp	byte ptr [rax], 0
	cmove	rax, r15
	mov	qword ptr [rip + word_regex],  rax
	nop	dword ptr [rax + rax]
.label_110:
	mov	edx, OFFSET FLAT:label_385
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x78
	ja	.label_146
	jmp	qword ptr [(rcx * 8) + label_192]
.label_3274:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_154
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + format_vals]
	mov	dword ptr [rip + output_format],  eax
	jmp	.label_110
.label_3275:
	mov	byte ptr [rip + auto_reference],  1
	jmp	.label_110
.label_3280:
	mov	byte ptr [rip + right_reference],  1
	jmp	.label_110
.label_3284:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + break_file],  rax
	jmp	.label_110
.label_3285:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_110
.label_3287:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ignore_file],  rax
	jmp	.label_110
.label_3288:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + only_file],  rax
	jmp	.label_110
.label_3276:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + truncation_string],  rax
	jmp	.label_110
.label_3277:
	mov	byte ptr [rip + gnu_extensions],  1
	jmp	.label_110
.label_3278:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + macro_name],  rax
	jmp	.label_110
.label_3279:
	mov	dword ptr [rip + output_format],  2
	jmp	.label_110
.label_3281:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + context_regex],  rax
	jmp	.label_110
.label_3282:
	mov	dword ptr [rip + output_format],  3
	jmp	.label_110
.label_3286:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_268
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_268
	mov	qword ptr [rip + gap_size],  rax
	jmp	.label_110
.label_3289:
	mov	byte ptr [rip + input_reference],  1
	jmp	.label_110
.label_3290:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_286
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_286
	mov	qword ptr [rip + line_width],  rax
	jmp	.label_110
.label_3273:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_301
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	mov	dword ptr [rip + number_input_files],  1
	mov	rax, qword ptr [rip + input_file_name]
	mov	qword ptr [rax], 0
	jmp	.label_384
.label_301:
	mov	cl, byte ptr [rip + gnu_extensions]
	test	cl, cl
	je	.label_325
	mov	dword ptr [rip + number_input_files],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rbx + rax*8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_342
	cmp	dl, 0x2d
	jne	.label_315
	cmp	byte ptr [rcx + 1], 0
	je	.label_342
.label_315:
	mov	rdx, qword ptr [rip + input_file_name]
	mov	qword ptr [rdx], rcx
	jmp	.label_354
.label_325:
	sub	ebp, eax
	mov	dword ptr [rip + number_input_files],  ebp
	js	.label_359
	movsxd	rdi, ebp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_359
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_359
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + number_input_files]
	test	rax, rax
	jle	.label_384
	mov	rcx, qword ptr [rip + input_file_name]
	movsxd	rsi, dword ptr [rip + optind]
	lea	edx, [rsi + 1]
	lea	rsi, [rbx + rsi*8]
	xor	edi, edi
	nop	dword ptr [rax]
.label_408:
	mov	rbp, qword ptr [rsi + rdi*8]
	movzx	ebx, byte ptr [rbp]
	test	bl, bl
	je	.label_398
	cmp	bl, 0x2d
	jne	.label_367
	cmp	byte ptr [rbp + 1], 0
	je	.label_398
.label_367:
	mov	qword ptr [rcx + rdi*8], rbp
	jmp	.label_405
	nop	dword ptr [rax]
.label_398:
	mov	qword ptr [rcx + rdi*8], 0
.label_405:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [rip + optind],  ebp
	inc	rdi
	cmp	rdi, rax
	jl	.label_408
	jmp	.label_384
.label_342:
	mov	rcx, qword ptr [rip + input_file_name]
	mov	qword ptr [rcx], 0
.label_354:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cmp	ecx, ebp
	jge	.label_38
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_44
	call	freopen_safer
	test	rax, rax
	je	.label_55
	mov	ecx, dword ptr [rip + optind]
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
.label_38:
	cmp	ecx, ebp
	jl	.label_84
.label_384:
	cmp	dword ptr [rip + output_format],  0
	jne	.label_87
	movzx	eax, byte ptr [rip + gnu_extensions]
	inc	eax
	mov	dword ptr [rip + output_format],  eax
.label_87:
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_292
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4]
	mov	byte ptr [rbx + folded_chars],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [rbx + label_104],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 8]
	mov	byte ptr [rbx + label_105],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 0xc]
	mov	byte ptr [rbx + label_106],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_107
.label_292:
	mov	rax, qword ptr [rip + context_regex]
	test	rax, rax
	je	.label_137
	cmp	byte ptr [rax], 0
	jne	.label_166
	mov	qword ptr [rip + context_regex],  0
	jmp	.label_171
.label_137:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	jne	.label_150
	mov	al, byte ptr [rip + input_reference]
	test	al, al
	je	.label_155
.label_150:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_165
	jmp	.label_166
.label_155:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_172
.label_166:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_171:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_178
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	jne	.label_347
	jmp	.label_81
.label_178:
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	je	.label_186
.label_347:
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	movdqa	xmm0, xmmword ptr [rip + label_64]
	movdqa	xmmword ptr [rip + label_65],  xmm0
	movdqa	xmmword ptr [rip + label_66],  xmm0
	movdqa	xmmword ptr [rip + label_67],  xmm0
	movdqa	xmmword ptr [rip + label_68],  xmm0
	movdqa	xmmword ptr [rip + label_69],  xmm0
	movdqa	xmmword ptr [rip + label_70],  xmm0
	movdqa	xmmword ptr [rip + label_71],  xmm0
	movdqa	xmmword ptr [rip + label_72],  xmm0
	movdqa	xmmword ptr [rip + label_73],  xmm0
	movdqa	xmmword ptr [rip + label_74],  xmm0
	movdqa	xmmword ptr [rip + label_75],  xmm0
	movdqa	xmmword ptr [rip + label_76],  xmm0
	movdqa	xmmword ptr [rip + label_77],  xmm0
	movdqa	xmmword ptr [rip + label_78],  xmm0
	movdqa	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdi, rax
	jae	.label_195
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_271:
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [rdx + word_fastmap],  0
	inc	rcx
	cmp	rax, rcx
	jne	.label_271
.label_195:
	cmp	byte ptr [rip + gnu_extensions],  1
	jne	.label_275
	mov	byte ptr [rip + label_78],  0
	mov	word ptr [rip + label_80],  0
.label_275:
	call	free
.label_81:
	mov	rdi, qword ptr [rip + ignore_file]
	test	rdi, rdi
	je	.label_281
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [rip + label_270],  0
	jne	.label_281
	mov	qword ptr [rip + ignore_file],  0
.label_281:
	mov	rdi, qword ptr [rip + only_file]
	test	rdi, rdi
	je	.label_295
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [rip + label_307],  0
	jne	.label_295
	mov	qword ptr [rip + only_file],  0
.label_295:
	mov	qword ptr [rip + number_of_occurs.0],  0
	mov	qword ptr [rip + total_line_count],  0
	mov	qword ptr [rip + maximum_word_length],  0
	mov	qword ptr [rip + reference_max_width],  0
	cmp	dword ptr [rip + number_input_files],  0
	jle	.label_353
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_402:
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rip + text_buffers]
	add	rsi, rbp
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + r13*8]
	call	swallow_file_in_memory
	mov	r14, qword ptr [rip + text_buffers]
	mov	rax, qword ptr [r14 + rbp]
	mov	rbx, qword ptr [r14 + rbp + 8]
	cmp	byte ptr [rip + input_reference],  1
	mov	r12, rax
	mov	ecx, 0
	mov	qword ptr [rsp + 0x38], rcx
	jne	.label_338
	cmp	rax, rbx
	mov	r15, rax
	mov	rdx, rax
	jae	.label_350
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, r15
	nop	dword ptr [rax]
.label_361:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_350
	inc	rdx
	cmp	rdx, rbx
	jb	.label_361
.label_350:
	mov	rax, rdx
	sub	rax, r15
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, rdx
	cmp	rdx, rbx
	jae	.label_365
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_379:
	movzx	ecx, byte ptr [r12]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_365
	inc	r12
	cmp	r12, rbx
	jb	.label_379
.label_365:
	mov	rax, r15
.label_338:
	cmp	rax, rbx
	jae	.label_382
	lea	rcx, [r14 + rbp + 8]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rax
	nop	dword ptr [rax]
.label_393:
	mov	r15, rax
	cmp	qword ptr [rip + context_regex],  0
	je	.label_386
	mov	rdx, rbx
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_388
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r15
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_386
	test	rax, rax
	je	.label_399
	cmp	rax, -2
	je	.label_401
	mov	rax, qword ptr [rip + label_404]
	mov	rbx, qword ptr [rax]
	add	rbx, r15
.label_386:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr [rax + rax]
.label_36:
	mov	r14, rbx
	cmp	r14, r15
	jbe	.label_411
	lea	rbx, [r14 - 1]
	movzx	ebp, byte ptr [r14 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_36
.label_411:
	mov	qword ptr [rsp + 0x10], r15
	mov	rbp, r12
	jmp	.label_41
.label_322:
	mov	qword ptr [r9], rbx
	mov	qword ptr [r8 + rdi + 8], r12
	mov	qword ptr [rsp + 0x10], rax
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x10], rax
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x18], rax
	mov	dword ptr [r8 + rdi + 0x28], r13d
	inc	rsi
	mov	qword ptr [rip + number_of_occurs.0],  rsi
	nop	dword ptr [rax]
.label_41:
	mov	rbx, r15
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_148:
	inc	rbx
.label_88:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_100
	mov	rdx, r14
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_109
	cmp	rax, -2
	je	.label_112
	mov	rax, qword ptr [rip + label_115]
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rcx, qword ptr [rip + label_116]
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	jmp	.label_117
	nop	
.label_138:
	inc	rbx
.label_100:
	cmp	rbx, r14
	jae	.label_136
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_138
.label_136:
	cmp	rbx, r14
	je	.label_109
	jae	.label_148
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_170:
	movzx	eax, byte ptr [r15]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_117
	inc	r15
	cmp	r15, r14
	jb	.label_170
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	r12, r15
	sub	r12, rbx
	je	.label_148
	cmp	r12, qword ptr [rip + maximum_word_length]
	jle	.label_180
	mov	qword ptr [rip + maximum_word_length],  r12
.label_180:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_184
	cmp	rbp, rbx
	jae	.label_185
	mov	rdx, rbp
	mov	qword ptr [rsp + 0x18], r13
.label_223:
	mov	r13, rdx
	nop	dword ptr [rax]
.label_39:
	cmp	byte ptr [r13], 0xa
	je	.label_191
	inc	r13
	cmp	r13, rbx
	jb	.label_39
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_191:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rax]
	cmp	rdx, rbp
	mov	qword ptr [rsp], rdx
	jae	.label_205
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	dword ptr [rax + rax]
.label_220:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_205
	inc	rdx
	cmp	rdx, rbp
	jb	.label_220
.label_205:
	mov	rax, rdx
	sub	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rdx, rbx
	jb	.label_223
	inc	r13
	mov	qword ptr [rsp], r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rdx
	jmp	.label_185
.label_199:
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rax
.label_185:
	cmp	rbp, rbx
	ja	.label_41
.label_184:
	mov	qword ptr [rsp + 8], rbp
	cmp	qword ptr [rip + ignore_file],  0
	je	.label_127
	mov	rcx, qword ptr [rip + label_270]
	test	rcx, rcx
	jle	.label_127
	mov	r8, qword ptr [rip + ignore_table]
	mov	al, byte ptr [rip + ignore_case]
	xor	r10d, r10d
	test	al, al
	je	.label_274
.label_327:
	mov	r9, rcx
	dec	r9
	nop	dword ptr [rax]
.label_323:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rdi, r11
	cmovle	rdi, r12
	test	rdi, rdi
	jle	.label_340
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_314:
	movzx	eax, byte ptr [rbx + rdx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_306
	inc	rdx
	cmp	rdx, rdi
	jl	.label_314
.label_340:
	cmp	r12, r11
	jl	.label_318
	jg	.label_319
	jmp	.label_320
	nop	
.label_306:
	test	eax, eax
	js	.label_318
.label_319:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_323
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_318:
	cmp	r10, rcx
	jl	.label_327
	jmp	.label_127
	nop	
.label_274:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_366:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rax, r11
	cmovle	rax, r12
	test	rax, rax
	jle	.label_336
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_356:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ebp, byte ptr [rsi + rdx]
	sub	edi, ebp
	jne	.label_352
	inc	rdx
	cmp	rdx, rax
	jl	.label_356
.label_336:
	cmp	r12, r11
	jl	.label_358
	jg	.label_360
	jmp	.label_362
.label_352:
	test	edi, edi
	js	.label_358
.label_360:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_366
	jmp	.label_127
	nop	
.label_358:
	cmp	r10, rcx
	jl	.label_274
.label_127:
	cmp	qword ptr [rip + only_file],  0
	je	.label_60
	mov	rcx, qword ptr [rip + label_307]
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_41
	mov	r8, qword ptr [rip + only_table]
	mov	al, byte ptr [rip + ignore_case]
	xor	r10d, r10d
	test	al, al
	je	.label_142
.label_58:
	mov	r9, rcx
	dec	r9
	nop	word ptr [rax + rax]
.label_43:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rdi, r11
	cmovle	rdi, r12
	test	rdi, rdi
	jle	.label_389
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_414:
	movzx	eax, byte ptr [rbx + rdx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_406
	inc	rdx
	cmp	rdx, rdi
	jl	.label_414
.label_389:
	cmp	r12, r11
	jl	.label_33
	jg	.label_37
	jmp	.label_60
	nop	
.label_406:
	test	eax, eax
	js	.label_33
.label_37:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_43
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_33:
	cmp	r10, rcx
	jl	.label_58
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_313:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rax, r11
	cmovle	rax, r12
	test	rax, rax
	jle	.label_119
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_121:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ebp, byte ptr [rsi + rdx]
	sub	edi, ebp
	jne	.label_118
	inc	rdx
	cmp	rdx, rax
	jl	.label_121
.label_119:
	cmp	r12, r11
	jl	.label_125
	jg	.label_128
	jmp	.label_60
	nop	dword ptr [rax]
.label_118:
	test	edi, edi
	js	.label_125
.label_128:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_313
	jmp	.label_141
	nop	
.label_125:
	cmp	r10, rcx
	jl	.label_142
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
.label_60:
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	cmp	rsi, qword ptr [rip + occurs_alloc]
	jne	.label_151
	mov	rdi, qword ptr [rip + occurs_table.0]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 0x38]
	je	.label_163
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rsi, rax
	jae	.label_173
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_177
.label_45:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
.label_141:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
.label_151:
	mov	r8, qword ptr [rip + occurs_table.0]
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_370
.label_320:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
.label_362:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_41
.label_163:
	test	rsi, rsi
	mov	eax, 2
	cmove	rsi, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	cmp	rsi, rax
	jae	.label_197
.label_177:
	mov	qword ptr [rip + occurs_alloc],  rsi
	shl	rsi, 4
	lea	rsi, [rsi + rsi*2]
	call	xrealloc
	mov	r8, rax
	mov	qword ptr [rip + occurs_table.0],  r8
	mov	rsi, qword ptr [rip + number_of_occurs.0]
.label_370:
	lea	rdi, [rsi + rsi*2]
	shl	rdi, 4
	lea	r9, [r8 + rdi]
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_217
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp + 8]
	cmp	rdx, rbx
	jae	.label_224
.label_302:
	mov	r13, rdx
	nop	dword ptr [rax]
.label_253:
	cmp	byte ptr [r13], 0xa
	je	.label_250
	inc	r13
	cmp	r13, rbx
	jb	.label_253
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_250:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	cmp	rdx, rax
	mov	qword ptr [rsp], rdx
	jae	.label_289
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rax
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_294:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_289
	inc	rdx
	cmp	rdx, rbp
	jb	.label_294
.label_289:
	cmp	rdx, rbx
	jb	.label_302
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_224
.label_217:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_308
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x20], rax
	mov	al, 1
	cmp	rbp, qword ptr [rip + reference_max_width]
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_310
	mov	qword ptr [rip + reference_max_width],  rcx
	jmp	.label_310
.label_308:
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_322
.label_257:
	mov	rdx, r13
.label_224:
	mov	rax, qword ptr [rip + total_line_count]
	mov	qword ptr [r8 + rdi + 0x20], rax
	mov	al, byte ptr [rip + input_reference]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rdx
.label_310:
	test	al, 1
	je	.label_331
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jne	.label_322
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x18], r13
	cmp	rax, r14
	mov	r13, rax
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x28], rdi
	jae	.label_181
	mov	rbp, r8
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_378:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_181
	inc	r13
	cmp	r13, r14
	jb	.label_378
.label_181:
	cmp	r13, r14
	jae	.label_380
	mov	rbp, r8
	mov	qword ptr [rsp + 0x48], r9
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_272:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_380
	inc	r13
	cmp	r13, r14
	jb	.label_272
.label_380:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp], rax
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_322
.label_331:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_322
	nop	dword ptr [rax]
.label_109:
	mov	r12, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp]
	jb	.label_393
.label_382:
	mov	rax, qword ptr [rip + total_line_count]
	inc	rax
	mov	qword ptr [rip + total_line_count],  rax
	mov	rcx, qword ptr [rip + file_line_count]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	r13, rax
	jl	.label_402
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	test	rsi, rsi
	je	.label_353
	mov	rdi, qword ptr [rip + occurs_table.0]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_353:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_46
	mov	qword ptr [rip + reference_max_width],  0
	xor	edi, edi
	cmp	dword ptr [rip + number_input_files],  0
	je	.label_54
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_124:
	mov	rax, qword ptr [rip + file_line_count]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	test	rbp, rbp
	je	.label_258
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_258:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	rbx, eax
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_108
	call	strlen
	add	rbx, rax
.label_108:
	mov	rdi, qword ptr [rip + reference_max_width]
	cmp	rbx, rdi
	jle	.label_113
	mov	qword ptr [rip + reference_max_width],  rbx
	mov	rdi, rbx
.label_113:
	inc	rbp
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	rbp, rax
	jb	.label_124
.label_54:
	lea	rax, [rdi + 1]
	mov	qword ptr [rip + reference_max_width],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + reference],  rax
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_144
.label_46:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_153
.label_144:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	je	.label_156
.label_153:
	mov	rax, qword ptr [rip + line_width]
	jmp	.label_169
.label_156:
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + line_width]
	add	rcx, qword ptr [rip + reference_max_width]
	sub	rax, rcx
	mov	qword ptr [rip + line_width],  rax
.label_169:
	test	rax, rax
	jns	.label_182
	mov	qword ptr [rip + line_width],  0
	xor	eax, eax
.label_182:
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [rip + half_line_width],  rbx
	mov	rbp, rbx
	sub	rbp, qword ptr [rip + gap_size]
	mov	qword ptr [rip + before_max_width],  rbp
	mov	qword ptr [rip + keyafter_max_width],  rbx
	mov	rdi, qword ptr [rip + truncation_string]
	test	rdi, rdi
	je	.label_203
	cmp	byte ptr [rdi], 0
	je	.label_203
	call	strlen
	mov	qword ptr [rip + truncation_string_length],  rax
	jmp	.label_207
.label_203:
	mov	qword ptr [rip + truncation_string],  0
	mov	rax, qword ptr [rip + truncation_string_length]
.label_207:
	mov	cl, byte ptr [rip + gnu_extensions]
	add	rax, rax
	test	cl, cl
	je	.label_200
	or	rax, 1
	jmp	.label_216
.label_200:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [rip + before_max_width],  rcx
.label_216:
	sub	rbx, rax
	mov	qword ptr [rip + keyafter_max_width],  rbx
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rax]
	lea	rcx, [rax + 0x1fe]
	mov	edx, OFFSET FLAT:edited_flag
	cmp	rcx, rdx
	jb	.label_226
	mov	ecx, OFFSET FLAT:label_254
	cmp	rax, rcx
	ja	.label_226
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_265:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + edited_flag],  dl
	movzx	edx, word ptr [rax + rcx*2 + 2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_262],  dl
	movzx	edx, word ptr [rax + rcx*2 + 4]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_263],  dl
	movzx	edx, word ptr [rax + rcx*2 + 6]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_264],  dl
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_265
	jmp	.label_287
.label_226:
	xor	ecx, ecx
	movdqa	xmm0, xmmword ptr [rip + label_290]
	pand	xmm0, xmmword ptr [rip + label_291]
	nop	word ptr [rax + rax]
.label_300:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + edited_flag],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_297],  xmm2
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + label_298],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_299],  xmm2
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_300
.label_287:
	mov	byte ptr [rip + label_332],  1
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	je	.label_333
	cmp	eax, 3
	jne	.label_249
	mov	byte ptr [rip + label_228],  1
	mov	byte ptr [rip + label_229],  1
	mov	byte ptr [rip + label_230],  1
	mov	byte ptr [rip + label_231],  1
	mov	dword ptr [rip + label_232],  0x1010101
	movdqu	xmm2, xmmword ptr [rip + label_233]
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_64]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_234],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_235]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_236],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_237]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_238],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_239]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_240],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_241]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_242],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_243]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_244],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_245]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_246],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_247]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_248],  xmm2
	jmp	.label_249
.label_333:
	mov	byte ptr [rip + label_409],  1
.label_249:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	cmp	qword ptr [rip + number_of_occurs.0],  0
	jle	.label_413
	mov	r14, qword ptr [rip + occurs_table.0]
	xor	r12d, r12d
	jmp	.label_48
.label_186:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	je	.label_59
	movdqa	xmm0, xmmword ptr [rip + label_64]
	movdqa	xmmword ptr [rip + label_65],  xmm0
	movdqa	xmmword ptr [rip + label_66],  xmm0
	movdqa	xmmword ptr [rip + label_67],  xmm0
	movdqa	xmmword ptr [rip + label_68],  xmm0
	movdqa	xmmword ptr [rip + label_69],  xmm0
	movdqa	xmmword ptr [rip + label_70],  xmm0
	movdqa	xmmword ptr [rip + label_71],  xmm0
	movdqa	xmmword ptr [rip + label_72],  xmm0
	movdqa	xmmword ptr [rip + label_73],  xmm0
	movdqa	xmmword ptr [rip + label_74],  xmm0
	movdqa	xmmword ptr [rip + label_75],  xmm0
	movdqa	xmmword ptr [rip + label_76],  xmm0
	movdqa	xmmword ptr [rip + label_77],  xmm0
	movdqa	xmmword ptr [rip + label_78],  xmm0
	movdqa	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	byte ptr [rip + label_78],  0
	mov	word ptr [rip + label_80],  0
	jmp	.label_81
.label_59:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + word_fastmap],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_157],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_158],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_159],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_160
	jmp	.label_81
.label_260:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_49
	nop	dword ptr [rax]
.label_130:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_260
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_49:
	dec	rbx
	cmp	rbx, 1
	jg	.label_130
	jmp	.label_132
.label_403:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_213
.label_330:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_252
.label_183:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_280
.label_152:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_391
.label_52:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_337
.label_219:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_201
.label_204:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_42
.label_397:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_410
.label_412:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_51
.label_196:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_51
.label_377:
	mov	esi, 0x3a
	call	__overflow
	jmp	.label_278
	nop	
.label_48:
	mov	qword ptr [rsp + 0x40], r12
	mov	r8, qword ptr [r14]
	mov	qword ptr [rip + keyafter],  r8
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [r8 + rcx]
	mov	qword ptr [rip + label_85],  rbx
	mov	rax, qword ptr [r14 + 0x10]
	add	rax, r8
	mov	qword ptr [rsp + 0x10], rax
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [r8 + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi, qword ptr [rip + text_buffers]
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	jl	.label_86
	jmp	.label_311
	nop	word ptr cs:[rax + rax]
.label_335:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_317
	cmp	rbx, r15
	jae	.label_321
	inc	rbx
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_324:
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_321
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_324
	jmp	.label_321
.label_317:
	inc	rbx
	jmp	.label_321
	nop	
.label_86:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	ja	.label_311
	mov	qword ptr [rip + label_85],  rbx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_335
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_267
	cmp	rax, -1
	mov	ecx, 1
	cmove	rax, rcx
	add	rbx, rax
	mov	r8, qword ptr [rip + keyafter]
.label_321:
	cmp	rbx, r15
	jb	.label_86
.label_311:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	jbe	.label_357
	mov	rbx, qword ptr [rip + label_85]
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	qword ptr [rip + label_85],  rbx
.label_364:
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	dl
	and	dl, cl
	mov	byte ptr [rip + keyafter_truncation],  dl
	cmp	rbx, r8
	jbe	.label_371
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rax]
	dec	rbx
	nop	
.label_383:
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_371
	mov	qword ptr [rip + label_85],  rbx
	cmp	rbx, r8
	lea	rbx, [rbx - 1]
	ja	.label_383
.label_371:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	neg	rcx
	mov	rdx, qword ptr [rip + maximum_word_length]
	add	rdx, qword ptr [rip + half_line_width]
	cmp	rdx, rcx
	jge	.label_387
	mov	rbx, r8
	sub	rbx, rdx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_394
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_267
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	r8, qword ptr [rip + keyafter]
	jmp	.label_349
.label_387:
	add	rbx, r8
.label_349:
	mov	qword ptr [rip + before],  rbx
	mov	qword ptr [rip + label_34],  r8
	cmp	r8, rbx
	mov	qword ptr [rsp + 0x20], r14
	jbe	.label_35
	mov	rax, qword ptr [rsp]
	mov	rsi, qword ptr [rax]
	lea	rdx, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_255
	mov	qword ptr [rip + label_34],  rcx
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	mov	r8, rcx
	ja	.label_61
	inc	rdx
	mov	r8, rcx
	jmp	.label_288
	nop	dword ptr [rax + rax]
.label_35:
	mov	rdx, r8
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_255:
	inc	rcx
	mov	rdx, rcx
.label_288:
	mov	r14, qword ptr [rip + before_max_width]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	jae	.label_99
	mov	rcx, rbx
	mov	rsi, rbx
.label_187:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_111
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_re_match
	cmp	rax, -2
	je	.label_267
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rcx, qword ptr [rip + before]
	mov	qword ptr [rip + before],  rcx
	mov	r14, qword ptr [rip + before_max_width]
	mov	r8, qword ptr [rip + label_34]
	mov	rdx, r8
	mov	rsi, rcx
	jmp	.label_126
	nop	word ptr [rax + rax]
.label_111:
	movzx	edi, byte ptr [rsi]
	cmp	byte ptr [rdi + word_fastmap],  0
	je	.label_261
	cmp	rsi, rdx
	jae	.label_126
	inc	rsi
	mov	rcx, rsi
	nop	word ptr [rax + rax]
.label_326:
	mov	rsi, rcx
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, rdx
	jae	.label_222
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [rdi + word_fastmap],  0
	jne	.label_326
	dec	rcx
	jmp	.label_126
.label_261:
	inc	rsi
	mov	qword ptr [rip + before],  rsi
.label_222:
	mov	rcx, rsi
.label_126:
	lea	rdi, [rsi + r14]
	cmp	rdi, rdx
	jb	.label_187
	jmp	.label_190
.label_99:
	mov	rcx, rbx
	mov	rsi, rbx
.label_190:
	cmp	qword ptr [rip + truncation_string],  0
	je	.label_194
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	rdx, rdi
	cmp	rdx, r13
	jbe	.label_161
	lea	rdi, [rdx - 1]
	movzx	ebp, byte ptr [rdx - 1]
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_143
.label_161:
	cmp	qword ptr [rsp + 0x10], rdx
	setb	dl
	jmp	.label_211
	nop	dword ptr [rax + rax]
.label_194:
	xor	edx, edx
.label_211:
	mov	byte ptr [rip + before_truncation],  dl
	cmp	rsi, r12
	jae	.label_218
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_212:
	movzx	eax, byte ptr [rsi]
	test	byte ptr [rdx + rax*2 + 1], 0x20
	je	.label_218
	inc	rsi
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, r12
	mov	rcx, rsi
	jb	.label_212
.label_218:
	sub	r14, r8
	add	r14, rcx
	sub	r14, qword ptr [rip + gap_size]
	test	r14, r14
	jle	.label_256
	mov	rax, qword ptr [rip + label_85]
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jae	.label_266
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax]
.label_276:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_266
	inc	rax
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jb	.label_276
.label_266:
	mov	qword ptr [rip + label_62],  rax
	mov	rbp, rax
	cmp	rax, r15
	jb	.label_167
	jmp	.label_283
	nop	dword ptr [rax]
.label_312:
	movzx	ecx, byte ptr [rbp]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_209
	cmp	rbp, r15
	jae	.label_179
	inc	rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_304:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_179
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_304
	jmp	.label_179
.label_209:
	inc	rbp
	jmp	.label_179
.label_167:
	mov	qword ptr [rip + label_62],  rbp
	cmp	qword ptr [rip + word_regex],  0
	je	.label_312
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_267
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax, qword ptr [rip + tail]
.label_179:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_131
	cmp	rbp, rcx
	jb	.label_167
.label_131:
	cmp	rbp, rcx
	jae	.label_175
.label_283:
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [rip + label_62],  rbp
	jmp	.label_334
	nop	dword ptr [rax + rax]
.label_256:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_269
.label_394:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_348
	neg	rdx
	jns	.label_349
	lea	rcx, [r8 + rdx + 1]
	nop	dword ptr [rax + rax]
.label_363:
	mov	rbx, rcx
	cmp	rbx, r8
	jae	.label_349
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_363
	jmp	.label_349
.label_175:
	mov	rbp, qword ptr [rip + label_62]
	mov	r14, qword ptr [rsp + 0x20]
.label_334:
	cmp	rbp, rax
	jbe	.label_373
	mov	byte ptr [rip + keyafter_truncation],  0
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [rip + truncation_string],  0
	setne	cl
	and	cl, dl
	jmp	.label_375
	nop	dword ptr [rax]
.label_373:
	xor	ecx, ecx
.label_375:
	mov	byte ptr [rip + tail_truncation],  cl
	cmp	rbp, rax
	jbe	.label_269
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_392:
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_269
	mov	qword ptr [rip + label_62],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_392
	nop	dword ptr [rax + rax]
.label_269:
	mov	rbp, qword ptr [rip + keyafter_max_width]
	sub	rbp, qword ptr [rip + label_85]
	add	rbp, qword ptr [rip + keyafter]
	sub	rbp, qword ptr [rip + gap_size]
	test	rbp, rbp
	jle	.label_303
	mov	rdx, qword ptr [rip + before]
	mov	qword ptr [rip + label_40],  rdx
	cmp	rdx, r13
	jbe	.label_407
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_162:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_400
	mov	qword ptr [rip + label_40],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_162
.label_400:
	inc	rdx
.label_407:
	mov	qword ptr [rip + head],  rbx
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	mov	r12, qword ptr [rsp + 0x40]
	jb	.label_56
	jmp	.label_83
	nop	word ptr [rax + rax]
.label_120:
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_368
	cmp	rbx, rdx
	jae	.label_91
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_103:
	mov	rbx, rax
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jae	.label_91
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_103
	jmp	.label_91
.label_368:
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	jmp	.label_91
	nop	dword ptr [rax]
.label_56:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_120
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_133
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, qword ptr [rip + head]
	mov	qword ptr [rip + head],  rbx
	mov	rdx, qword ptr [rip + label_40]
.label_91:
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jb	.label_56
.label_83:
	cmp	rdx, rbx
	jbe	.label_164
	mov	byte ptr [rip + before_truncation],  0
	cmp	qword ptr [rsp + 0x10], rbx
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	al
	and	al, cl
	jmp	.label_351
	nop	word ptr cs:[rax + rax]
.label_303:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_82
	nop	word ptr [rax + rax]
.label_164:
	xor	eax, eax
.label_351:
	mov	byte ptr [rip + head_truncation],  al
	cmp	rbx, rdx
	jae	.label_82
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_202:
	movzx	ecx, byte ptr [rbx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_82
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jb	.label_202
	nop	dword ptr [rax]
.label_82:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_208
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx, qword ptr [rip + input_file_name]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	mov	ecx, OFFSET FLAT:label_90
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_210
	mov	rcx, qword ptr [rip + file_line_count]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_210:
	mov	rdi, qword ptr [rip + reference]
	call	stpcpy
	mov	rbp, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_227
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [rip + label_57],  rax
	jmp	.label_32
	nop	word ptr [rax + rax]
.label_208:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_32
	mov	rax, qword ptr [rip + keyafter]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rip + reference],  rax
	mov	qword ptr [rip + label_57],  rax
	cmp	rax, r15
	jae	.label_32
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	
.label_284:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_32
	inc	rax
	mov	qword ptr [rip + label_57],  rax
	cmp	rax, r15
	jb	.label_284
	nop	dword ptr [rax]
.label_32:
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	jb	.label_372
	je	.label_296
	cmp	eax, 3
	jne	.label_213
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_305
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_330
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_252:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_62]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_89
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_34]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_89
	call	fputs_unlocked
	mov	rbp, qword ptr [rip + keyafter]
	mov	r15, qword ptr [rip + label_85]
	cmp	qword ptr [rip + word_regex],  0
	je	.label_214
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_98
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_133
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
.label_140:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_89
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_89
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_40]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_183
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_280:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_390
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_51
.label_390:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_397
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_410:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_57]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_412
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_372:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	jne	.label_47
	mov	bl, byte ptr [rip + auto_reference]
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_57]
	call	print_field
	cmp	bl, 1
	jne	.label_221
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_377
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_278:
	mov	rax, qword ptr [rip + gap_size]
	add	rax, qword ptr [rip + reference_max_width]
	mov	rbx, qword ptr [rip + reference]
	sub	rbx, qword ptr [rip + label_57]
	add	rbx, rax
	cmp	rbx, 2
	jge	.label_198
	jmp	.label_47
.label_296:
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_114
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_62]
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_215
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_215:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_152
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_391:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_93
	call	fputs_unlocked
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_176
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_176:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_34]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_52
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_337:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_93
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_85]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_123
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_123:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_219
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_201:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_93
	call	fputs_unlocked
	cmp	byte ptr [rip + head_truncation],  0
	je	.label_346
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_346:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_40]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_204
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_42:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_277
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_51
.label_277:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_93
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_57]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_196
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_51
.label_221:
	mov	rax, qword ptr [rip + reference_max_width]
	mov	rdx, qword ptr [rip + gap_size]
	lea	rdi, [rdx + rax]
	mov	rcx, qword ptr [rip + label_57]
	mov	rbp, qword ptr [rip + reference]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	jle	.label_47
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	sub	rbx, rcx
	jmp	.label_251
.label_214:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_329
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_140
	lea	rax, [rbp + 1]
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rbx, rax
	cmp	rbx, r15
	jae	.label_140
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_343
	jmp	.label_140
.label_348:
	inc	rbx
	jmp	.label_349
.label_329:
	lea	rbx, [rbp + 1]
	jmp	.label_140
.label_225:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_189
	nop	
.label_251:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_225
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_189:
	dec	rbx
	cmp	rbx, 1
	jg	.label_251
	jmp	.label_47
.label_293:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_198:
	dec	rbx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_293
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_374:
	cmp	rbx, 1
	jg	.label_198
	nop	word ptr cs:[rax + rax]
.label_47:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_62]
	cmp	rdi, rsi
	jae	.label_174
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_395
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	cl, byte ptr [rip + tail_truncation]
	jmp	.label_341
.label_174:
	mov	rbp, qword ptr [rip + half_line_width]
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + label_34]
	mov	rsi, qword ptr [rip + before]
	xor	edi, edi
	sub	rdi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	edx, 0
	cmove	rdi, rdx
	mov	rdx, rbp
	sub	rdx, rcx
	sub	rdx, rax
	add	rdx, rsi
	add	rdx, rdi
	test	rdx, rdx
	jle	.label_63
	add	rdi, rbp
	lea	rbx, [rsi + rdi + 1]
	sub	rbx, rcx
	sub	rbx, rax
	jmp	.label_53
.label_395:
	xor	ecx, ecx
.label_341:
	mov	rdx, qword ptr [rip + half_line_width]
	mov	r9, qword ptr [rip + gap_size]
	mov	r8, qword ptr [rip + label_34]
	mov	rsi, qword ptr [rip + before]
	xor	ebx, ebx
	sub	rbx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	ebp, 0
	cmovne	rbp, rbx
	mov	rdi, qword ptr [rip + label_62]
	mov	rax, qword ptr [rip + tail]
	test	cl, cl
	mov	ecx, 0
	cmove	rbx, rcx
	mov	rcx, rdx
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbp
	sub	rcx, rdi
	add	rcx, rbx
	add	rcx, rax
	test	rcx, rcx
	jle	.label_63
	add	rbp, rbx
	add	rbp, rdx
	add	rbp, rsi
	lea	rbx, [rax + rbp + 1]
	sub	rbx, r9
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_122
.label_149:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_316
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_149
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_316:
	dec	rbx
	cmp	rbx, 1
	jg	.label_53
	jmp	.label_63
.label_328:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_279
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_328
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_279:
	dec	rbx
	cmp	rbx, 1
	jg	.label_122
.label_63:
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_188
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_188:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_34]
	call	print_field
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_206
	inc	rbx
	jmp	.label_285
.label_339:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_285:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_339
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_145:
	dec	rbx
	cmp	rbx, 1
	jg	.label_285
.label_206:
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_85]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_345
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_345:
	mov	rcx, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_40]
	mov	rdi, rcx
	sub	rdi, rsi
	jae	.label_396
	mov	r9, qword ptr [rip + half_line_width]
	mov	r8, qword ptr [rip + label_85]
	xor	edx, edx
	sub	rdx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	r10, qword ptr [rip + keyafter]
	mov	ebx, 0
	cmovne	rbx, rdx
	mov	al, byte ptr [rip + head_truncation]
	test	al, al
	mov	ebp, 0
	cmove	rdx, rbp
	add	rdi, r9
	sub	rdi, r8
	add	rdi, r10
	add	rdi, rbx
	add	rdi, rdx
	test	rdi, rdi
	jle	.label_273
	add	rbx, rdx
	add	rbx, rcx
	add	rbx, r9
	lea	rbx, [r10 + rbx + 1]
	sub	rbx, rsi
	sub	rbx, r8
	jmp	.label_129
.label_396:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_309
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_132
.label_309:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_132
	mov	rcx, qword ptr [rip + half_line_width]
	mov	rax, qword ptr [rip + label_85]
	mov	rdx, qword ptr [rip + keyafter]
	xor	esi, esi
	sub	rsi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	edi, 0
	cmove	rsi, rdi
	mov	rdi, rcx
	sub	rdi, rax
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_132
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_130
.label_344:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_415
	nop	dword ptr [rax]
.label_129:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_344
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_415:
	dec	rbx
	cmp	rbx, 1
	jg	.label_129
	mov	al, byte ptr [rip + head_truncation]
.label_273:
	test	al, al
	je	.label_355
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_355:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_40]
	call	print_field
.label_132:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_282
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_51
.label_282:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_51
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_381
	inc	rbx
	jmp	.label_369
.label_259:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_376
	nop	
.label_369:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_259
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_376:
	dec	rbx
	cmp	rbx, 1
	jg	.label_369
.label_381:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_57]
	call	print_field
	nop	dword ptr [rax + rax]
.label_51:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_403
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_213:
	add	r14, 0x30
	inc	r12
	cmp	r12, qword ptr [rip + number_of_occurs.0]
	jl	.label_48
.label_413:
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_112:
	call	matcher_error
.label_267:
	call	matcher_error
.label_133:
	call	matcher_error
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + context_regex]
.label_147:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_401:
	call	matcher_error
.label_146:
	cmp	eax, 0xffffff7d
	je	.label_92
	cmp	eax, 0xffffff7e
	jne	.label_94
	xor	edi, edi
	call	usage
.label_94:
	mov	edi, 1
	call	usage
.label_92:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:label_101
	mov	esi, OFFSET FLAT:label_102
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_23
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	jmp	.label_135
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
.label_135:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_147
.label_359:
	call	xalloc_die
.label_173:
	call	xalloc_die
.label_197:
	call	xalloc_die
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_55:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r14, rax
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	r15, r14
	je	.label_419
	mov	r15, r14
	jmp	.label_423
.label_3261:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_426
	add	rbx, 2
	mov	word ptr [r15], 0x785c
.label_420:
	add	r15, 2
	jmp	.label_430
.label_427:
	add	rbx, 2
	xor	ecx, ecx
	jmp	.label_434
.label_426:
	movsx	ecx, dl
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_435
	add	ecx, -0x57
	jmp	.label_438
.label_431:
	add	rbx, 3
	jmp	.label_434
.label_435:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_440
	add	ecx, -0x37
	jmp	.label_438
.label_443:
	add	rbx, 4
.label_434:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_417
.label_440:
	add	ecx, -0x30
.label_438:
	movzx	esi, byte ptr [rbx + 3]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_416
	add	rbx, 3
	jmp	.label_432
.label_416:
	movsx	edx, sil
	shl	ecx, 4
	mov	eax, edx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_422
	add	edx, -0x57
	jmp	.label_428
.label_422:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_436
	add	edx, -0x37
	jmp	.label_428
.label_436:
	add	edx, -0x30
.label_428:
	add	edx, ecx
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_429
	add	rbx, 4
	mov	rax, rbx
	mov	ecx, edx
	mov	byte ptr [r15], cl
	jmp	.label_417
.label_429:
	movsx	ecx, sil
	shl	edx, 4
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_437
	add	ecx, -0x57
	jmp	.label_439
.label_437:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_442
	add	ecx, -0x37
	jmp	.label_439
.label_442:
	add	ecx, -0x30
.label_439:
	add	ecx, edx
	add	rbx, 5
.label_432:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_417
	nop	word ptr [rax + rax]
.label_423:
	lea	rax, [rbx + 1]
	cmp	cl, 0x5c
	jne	.label_421
	mov	cl, byte ptr [rax]
	movsx	edx, cl
	lea	esi, [rdx - 0x30]
	cmp	esi, 0x48
	ja	.label_424
	jmp	qword ptr [(rsi * 8) + label_441]
.label_3251:
	movsx	ecx, byte ptr [rbx + 2]
	mov	eax, ecx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_427
	add	ecx, -0x30
	movsx	eax, byte ptr [rbx + 3]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_431
	lea	ecx, [rax + rcx*8 - 0x30]
	movsx	eax, byte ptr [rbx + 4]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_443
	lea	ecx, [rax + rcx*8 - 0x30]
	add	rbx, 5
	jmp	.label_434
	nop	word ptr cs:[rax + rax]
.label_421:
	mov	byte ptr [r15], cl
.label_417:
	inc	r15
	jmp	.label_418
.label_424:
	test	edx, edx
	je	.label_418
.label_3252:
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], al
	jmp	.label_420
.label_3253:
	mov	byte ptr [r15], 7
	jmp	.label_425
.label_3256:
	mov	byte ptr [r15], 0xc
	jmp	.label_425
.label_3254:
	mov	byte ptr [r15], 8
	jmp	.label_425
.label_3255:
	test	cl, cl
	je	.label_418
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax]
.label_433:
	cmp	byte ptr [rax + 1], 0
	lea	rax, [rax + 1]
	jne	.label_433
	jmp	.label_418
.label_3257:
	mov	byte ptr [r15], 0xa
	jmp	.label_425
.label_3258:
	mov	byte ptr [r15], 0xd
	jmp	.label_425
.label_3259:
	mov	byte ptr [r15], 9
	jmp	.label_425
.label_3260:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_425:
	inc	r15
	add	rbx, 2
.label_430:
	mov	rax, rbx
.label_418:
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbx, rax
	jne	.label_423
.label_419:
	mov	byte ptr [r15], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	lea	rsi, [rsp + 8]
	call	swallow_file_in_memory
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	xor	esi, esi
	cmp	rbx, r13
	mov	edi, 0
	jae	.label_454
	xor	edi, edi
	movabs	r12, 0x555555555555555
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_448:
	cmp	rbx, r13
	jae	.label_444
	mov	rbp, rbx
	nop	dword ptr [rax + rax]
.label_447:
	cmp	byte ptr [rbp], 0xa
	je	.label_449
	inc	rbp
	cmp	rbp, r13
	jb	.label_447
.label_449:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_445
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_450
	test	rdi, rdi
	je	.label_451
	cmp	rsi, r12
	jae	.label_452
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_453
	nop	word ptr [rax + rax]
.label_444:
	mov	rbp, rbx
	jmp	.label_445
.label_451:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_446
.label_453:
	mov	qword ptr [r14 + 8], rsi
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_450:
	mov	rax, rsi
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	mov	qword ptr [rdi + rax + 8], r15
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_445:
	lea	rbx, [rbp + 1]
	cmp	rbp, r13
	cmovae	rbx, rbp
	cmp	rbx, r13
	jb	.label_448
.label_454:
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_452:
	call	xalloc_die
.label_446:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_455
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_455
	cmp	al, 0x2d
	jne	.label_459
	cmp	byte ptr [rbx + 1], 0
	je	.label_455
.label_459:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	read_file
	mov	qword ptr [r14], rax
	jmp	.label_458
.label_455:
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 8]
	call	fread_file
	mov	qword ptr [r14], rax
	mov	ebx, OFFSET FLAT:label_456
.label_458:
	test	rax, rax
	je	.label_457
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_457:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 8], xmm0
	mov	qword ptr [rdi + 0x28], rax
	mov	al, byte ptr [rip + ignore_case]
	mov	ecx, OFFSET FLAT:folded_chars
	xor	edx, edx
	test	al, al
	cmovne	rdx, rcx
	mov	qword ptr [rdi + 0x30], rdx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_461
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl compare_words
	.type compare_words, @function
compare_words:
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_462
	test	rdx, rdx
	jle	.label_465
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_463:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	edi, byte ptr [rsi + rcx]
	movzx	edi, byte ptr [rdi + folded_chars]
	sub	eax, edi
	jne	.label_464
	inc	rcx
	cmp	rcx, rdx
	jl	.label_463
	jmp	.label_465
.label_462:
	test	rdx, rdx
	jle	.label_465
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_466:
	movzx	eax, byte ptr [r10 + rdi]
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_464
	inc	rdi
	cmp	rdi, rdx
	jl	.label_466
.label_465:
	xor	ecx, ecx
	cmp	r8, r9
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_464:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
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
	#Procedure 0x404ef0

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_471
	test	rdx, rdx
	jle	.label_469
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_472:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebx, byte ptr [r11 + rcx]
	movzx	ebx, byte ptr [rbx + folded_chars]
	sub	eax, ebx
	jne	.label_468
	inc	rcx
	cmp	rcx, rdx
	jl	.label_472
	jmp	.label_469
.label_471:
	test	rdx, rdx
	jle	.label_469
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_470:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_468
	inc	rcx
	cmp	rcx, rdx
	jl	.label_470
.label_469:
	mov	eax, 0xffffffff
	cmp	r8, r9
	jl	.label_468
	mov	eax, 1
	jg	.label_468
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	eax, 0xffffffff
	jb	.label_468
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_468:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl print_field
	.type print_field, @function
print_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_487
	mov	r12d, OFFSET FLAT:label_492
	jmp	.label_493
.label_495:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_502
	call	fputs_unlocked
	jmp	.label_478
.label_503:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_504
	call	fputs_unlocked
	jmp	.label_478
.label_477:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_505
	call	fputs_unlocked
	jmp	.label_478
.label_480:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_506
	call	fputs_unlocked
	jmp	.label_478
.label_479:
	mov	esi, r13d
	call	__overflow
	jmp	.label_478
.label_405038:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_473
.label_501:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_478
	.section	.text
	.align	32
	#Procedure 0x405056

	.globl sub_405056
	.type sub_405056, @function
.label_405056:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_507
.label_508:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_478
	.section	.text
	.align	32
	#Procedure 0x405074
	.globl sub_405074
	.type sub_405074, @function
.label_405074:

	nop	word ptr cs:[rax + rax]
.label_493:
	movzx	ebx, byte ptr [r15]
	movzx	r13d, bl
	cmp	byte ptr [r13 + edited_flag],  0
	je	.label_473
	movsx	eax, byte ptr [r13 + diacrit_diac]
	test	eax, eax
	je	.label_481
	cmp	dword ptr [rip + output_format],  3
	jne	.label_481
	dec	eax
	cmp	eax, 8
	ja	.label_478
	movsx	ecx, byte ptr [r13 + diacrit_base]
	jmp	qword ptr [(rax * 8) + label_496]
.label_3347:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_90
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_491
	jmp	.label_475
.label_481:
	mov	eax, ebx
	add	al, 0xde
	movzx	eax, al
	cmp	al, 0x3d
	ja	.label_489
	jmp	qword ptr [(rax * 8) + label_500]
.label_3293:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	sub_405038
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_473:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_479
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_478
.label_489:
	cmp	bl, 0x7b
	je	.label_498
	cmp	bl, 0x7d
	jne	.label_485
.label_498:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_490
	xor	eax, eax
	mov	edx, r13d
	call	__printf_chk
	jmp	.label_478
.label_3292:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	sub_405056
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_507:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_508
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_478
.label_3294:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_494
	call	fputs_unlocked
	jmp	.label_478
.label_3346:
	cmp	ecx, 0x60
	jg	.label_488
	cmp	ecx, 0x41
	je	.label_477
	cmp	ecx, 0x4f
	jne	.label_485
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_484
	call	fputs_unlocked
	jmp	.label_478
.label_3348:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_90
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_499
	jmp	.label_475
.label_3349:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_90
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_474
	jmp	.label_475
.label_3350:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_90
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_482
.label_475:
	xor	eax, eax
	call	__printf_chk
	jmp	.label_478
.label_3351:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_483
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_478
.label_3352:
	cmp	ecx, 0x41
	je	.label_495
	cmp	ecx, 0x61
	jne	.label_485
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_497
	call	fputs_unlocked
	jmp	.label_478
.label_3353:
	cmp	ecx, 0x4f
	je	.label_503
	cmp	ecx, 0x6f
	jne	.label_485
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_476
	call	fputs_unlocked
	jmp	.label_478
.label_488:
	cmp	ecx, 0x61
	je	.label_480
	cmp	ecx, 0x6f
	jne	.label_485
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_486
	call	fputs_unlocked
	jmp	.label_478
.label_485:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_501
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_478:
	inc	r15
	cmp	r14, r15
	jne	.label_493
.label_487:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310

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
	je	.label_517
	test	r14, r14
	je	.label_509
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_512:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_514
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_511
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_513
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_514
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_514
.label_513:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_514:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_512
	jmp	.label_516
.label_517:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_516
.label_509:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_510:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_515
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_511
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_515
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_515:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_510
.label_516:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_511:
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
	#Procedure 0x405490
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
	je	.label_518
	mov	esi, OFFSET FLAT:label_519
	jmp	.label_520
.label_518:
	mov	esi, OFFSET FLAT:label_521
.label_520:
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
	#Procedure 0x405500

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
	je	.label_527
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_524:
	test	r15, r15
	je	.label_526
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_523
.label_526:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_528
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_529
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_525:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_524
.label_527:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_530
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
.label_530:
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
	#Procedure 0x405630

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
	jns	.label_531
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_532
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
	jmp	.label_533
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
.label_533:
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
.label_531:
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
	#Procedure 0x405700
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
	je	.label_534
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_534
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_535
.label_534:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_541
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_538
	cmp	dword ptr [rbp], 0x20
	jne	.label_538
.label_541:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_537
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_536
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_537:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_536:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_540
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
	#Procedure 0x405850

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_551
	cmp	eax, 1
	je	.label_543
	cmp	eax, 2
	je	.label_554
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_554:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_550
.label_551:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_553
.label_543:
	xor	r15d, r15d
.label_550:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_546
	mov	edi, OFFSET FLAT:label_542
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_546
	mov	r13b, 1
	jmp	.label_545
.label_546:
	test	r12b, r12b
	je	.label_549
	mov	edi, OFFSET FLAT:label_542
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_555
.label_549:
	test	r15b, r15b
	je	.label_553
	mov	edi, OFFSET FLAT:label_542
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_545
.label_553:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_548
.label_555:
	mov	r12b, 1
.label_545:
	xor	r14d, r14d
	test	eax, eax
	js	.label_548
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_548:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_544
	mov	edi, 2
	call	close
.label_544:
	test	r12b, r12b
	je	.label_547
	mov	edi, 1
	call	close
.label_547:
	test	r13b, r13b
	je	.label_552
	xor	edi, edi
	call	close
.label_552:
	test	r14, r14
	jne	.label_556
	mov	dword ptr [rbx], ebp
.label_556:
	mov	rax, r14
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
	#Procedure 0x4059a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_557
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_559
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_561
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_559
	mov	esi, OFFSET FLAT:label_560
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_562
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_562:
	mov	rbx, r14
.label_559:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_557:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_558
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a50
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_565
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_564
	mov	rbx, r14
	jmp	.label_565
.label_564:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_563
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_565:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	r14, rax
	cmp	byte ptr [rbp], 0
	je	.label_572
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_583:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_572
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_577
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_573
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_581
	test	edi, edi
	je	.label_569
.label_581:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_566
	test	al, al
	je	.label_573
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_573:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
.label_575:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_576:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_568
	shr	rax, 0x20
	je	.label_571
.label_568:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_575
	shr	rax, 0x20
	jne	.label_575
	jmp	.label_569
	nop	word ptr cs:[rax + rax]
.label_577:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_578
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_578:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_582
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_582:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_567
	cmp	byte ptr [rbx], 0
	je	.label_572
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_574
	nop	dword ptr [rax + rax]
.label_571:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_570
	and	dl, cl
	mov	al, 1
	jne	.label_570
	call	iswalnum
	test	eax, eax
	sete	al
.label_570:
	test	r13b, r13b
	je	.label_580
	test	al, al
	jne	.label_567
.label_580:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_579
	shr	rax, 0x20
	je	.label_572
.label_579:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_574:
	cmp	byte ptr [rbp], 0
	jne	.label_583
.label_572:
	xor	ebp, ebp
.label_567:
	mov	rdi, r14
	call	free
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_569:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_593
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_589
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_593
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:label_593
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_587
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_592
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_594
.label_589:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_595
.label_587:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_594
.label_592:
	mov	qword ptr [rsp + 8], r13
.label_594:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_595:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_584
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_588
	test	r15, r15
	je	.label_590
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_588
.label_590:
	test	r13, r13
	je	.label_597
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_588
.label_597:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_563
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_588:
	test	rbp, rbp
	je	.label_596
	mov	rdi, rbp
	call	free
.label_596:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_586
	call	free
	jmp	.label_586
.label_584:
	test	rbp, rbp
	je	.label_591
	cmp	rbp, r14
	je	.label_591
	mov	rdi, rbp
	call	free
.label_591:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_585
	cmp	rdi, r14
	je	.label_585
	call	free
.label_585:
	mov	rbx, r14
.label_586:
	mov	rax, rbx
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
	#Procedure 0x405f60
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
	#Procedure 0x405fa0
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
	#Procedure 0x405fb0
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
	#Procedure 0x405fc0
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
	#Procedure 0x406000
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
	#Procedure 0x406020
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_598
	test	rdx, rdx
	je	.label_598
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_598:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050
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
	#Procedure 0x4060d0

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
	jmp	.label_676
	nop	
.label_717:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_668
	or	al, dl
	jne	.label_668
	test	dil, 1
	jne	.label_715
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_668
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_676
	jmp	.label_668
.label_3341:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_699
	test	rbp, rbp
	je	.label_714
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_714:
	mov	r14d, 1
	jmp	.label_599
.label_3342:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_602
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_603
.label_699:
	xor	r14d, r14d
.label_599:
	mov	eax, OFFSET FLAT:label_602
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_681
	nop	
.label_676:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_624
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_629]
.label_3343:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_637
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_700
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_3344:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_647
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_647
	xor	r14d, r14d
	nop	
.label_708:
	cmp	r14, rbp
	jae	.label_686
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_686:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_708
.label_647:
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
	jmp	.label_603
.label_3336:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_603
.label_3339:
	mov	al, 1
.label_3337:
	mov	r12b, 1
.label_3340:
	test	r12b, 1
	mov	cl, 1
	je	.label_687
	mov	ecx, eax
.label_687:
	mov	al, cl
.label_3338:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_690
	test	rbp, rbp
	je	.label_695
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_695:
	mov	r14d, 1
	jmp	.label_633
.label_690:
	xor	r14d, r14d
.label_633:
	mov	ecx, OFFSET FLAT:label_700
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_681:
	mov	sil, r12b
.label_603:
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
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_707:
	inc	r12
.label_705:
	cmp	r11, -1
	je	.label_612
	cmp	r12, r11
	jne	.label_614
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_612:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_619
.label_614:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_625
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_628
	cmp	r11, -1
	jne	.label_628
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_628:
	cmp	rbx, r11
	jbe	.label_640
.label_625:
	xor	esi, esi
.label_673:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_642
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_644]
.label_3225:
	test	r12, r12
	jne	.label_600
	jmp	.label_649
	nop	word ptr cs:[rax + rax]
.label_640:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_661
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_673
	jmp	.label_601
.label_661:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_673
.label_3229:
	xor	eax, eax
	cmp	r11, -1
	je	.label_679
	test	r12, r12
	jne	.label_684
	cmp	r11, 1
	je	.label_649
	xor	r13d, r13d
	jmp	.label_607
.label_3218:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_692
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_601
	cmp	r8d, 2
	jne	.label_697
	mov	eax, r9d
	and	al, 1
	jne	.label_697
	cmp	r14, rbp
	jae	.label_702
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_702:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_703
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_703:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_709
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_709:
	add	r14, 3
	mov	r9b, 1
.label_697:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_713
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_713:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_716
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_716
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_716
	cmp	r14, rbp
	jae	.label_712
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_712:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_683
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_683:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_607
.label_3219:
	mov	bl, 0x62
	jmp	.label_613
.label_3220:
	mov	cl, 0x74
	jmp	.label_604
.label_3221:
	mov	bl, 0x76
	jmp	.label_613
.label_3222:
	mov	bl, 0x66
	jmp	.label_613
.label_3223:
	mov	cl, 0x72
	jmp	.label_604
.label_3226:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_622
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_611
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
	jae	.label_630
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_630:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_643
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_643:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_646
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_646:
	add	r14, 3
	xor	r9d, r9d
.label_622:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_607
.label_3227:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_652
	cmp	r8d, 2
	jne	.label_600
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_600
	jmp	.label_611
.label_3228:
	cmp	r8d, 2
	jne	.label_665
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_611
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_672
.label_642:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_674
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_688
.label_679:
	test	r12, r12
	jne	.label_698
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_698
.label_649:
	mov	dl, 1
.label_3224:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_611
	xor	eax, eax
	mov	r13b, dl
.label_607:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_706
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_710
	jmp	.label_711
	nop	word ptr cs:[rax + rax]
.label_706:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_711
.label_710:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_648
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_720
	nop	dword ptr [rax]
.label_711:
	test	sil, sil
.label_720:
	mov	ebx, r15d
	je	.label_608
	jmp	.label_724
.label_648:
	mov	ebx, r15d
	jmp	.label_724
.label_692:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_707
	xor	r15d, r15d
	jmp	.label_600
.label_665:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_604
	xor	eax, eax
	mov	r15b, 0x5c
.label_672:
	xor	r13d, r13d
	jmp	.label_608
.label_604:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_611
.label_613:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_607
	nop	
.label_724:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_601
	cmp	r8d, 2
	jne	.label_651
	mov	eax, r9d
	and	al, 1
	jne	.label_651
	cmp	r14, rbp
	jae	.label_627
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_627:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_631
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_631:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_636
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_636:
	add	r14, 3
	mov	r9b, 1
.label_651:
	cmp	r14, rbp
	jae	.label_641
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_641:
	inc	r14
	jmp	.label_659
.label_674:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_645
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_645:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_650
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_704:
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
	je	.label_666
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_680
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_610
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_693
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_658:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_670
	bt	rsi, rdx
	jb	.label_611
.label_670:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_658
.label_693:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_696
	xor	r13d, r13d
.label_696:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_704
	jmp	.label_685
.label_716:
	xor	r13d, r13d
	jmp	.label_607
.label_698:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_607
.label_652:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_600
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_600
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_600
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_609
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_653
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_618
	cmp	r14, rbp
	jae	.label_620
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_620:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_689
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_689:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_632
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_632:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_654
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_654:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_653:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_607
.label_600:
	xor	eax, eax
.label_684:
	xor	r13d, r13d
	jmp	.label_607
.label_650:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_660:
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
	je	.label_662
	cmp	rbp, -1
	je	.label_664
	cmp	rbp, -2
	je	.label_666
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_671
	xor	r13d, r13d
.label_671:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_660
	jmp	.label_685
.label_666:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_675
	lea	rax, [r10 + r12]
.label_719:
	cmp	byte ptr [rax + rsi], 0
	je	.label_675
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_719
.label_675:
	mov	qword ptr [rsp + 0x40], rsi
.label_680:
	xor	r13d, r13d
	jmp	.label_610
.label_664:
	xor	r13d, r13d
.label_662:
	mov	r10, qword ptr [rsp + 0x28]
.label_610:
	mov	r12, qword ptr [rsp + 0x40]
.label_685:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_688:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_623
	test	al, al
	je	.label_623
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_607
.label_623:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_718
	nop	word ptr [rax + rax]
.label_678:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_718:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_723
	test	sil, 1
	je	.label_605
	cmp	r14, rbp
	jae	.label_725
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_725:
	inc	r14
	xor	esi, esi
	jmp	.label_605
	nop	word ptr cs:[rax + rax]
.label_723:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_601
	cmp	r8d, 2
	jne	.label_615
	mov	eax, r9d
	and	al, 1
	jne	.label_615
	cmp	r14, rbp
	jae	.label_617
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_617:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_621
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_621:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_721
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_721:
	add	r14, 3
	mov	r9b, 1
.label_615:
	cmp	r14, rbp
	jae	.label_634
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_634:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_669
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_669:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_606
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_606:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_605:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_608
	test	r9b, 1
	je	.label_655
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_682
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_701
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_701:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_667
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_667:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_655
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rbx, rcx
.label_655:
	cmp	r14, rbp
	jae	.label_678
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_678
	nop	
.label_608:
	test	r9b, 1
	je	.label_691
	and	al, 1
	jne	.label_691
	cmp	r14, rbp
	jae	.label_694
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_694:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_635
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_635:
	add	r14, 2
	xor	r9d, r9d
.label_691:
	mov	ebx, r15d
.label_659:
	cmp	r14, rbp
	jae	.label_677
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_677:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_707
.label_609:
	xor	r13d, r13d
	jmp	.label_607
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	rcx, r12
.label_619:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_717
	or	al, dl
	jne	.label_717
	mov	r11, rcx
	jmp	.label_601
.label_611:
	mov	eax, 2
.label_663:
	mov	qword ptr [rsp + 0x38], rax
.label_601:
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
.label_657:
	mov	r14, rax
.label_656:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_668:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_722
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_626
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_626
	inc	rdx
	nop	dword ptr [rax + rax]
.label_639:
	cmp	r14, rbp
	jae	.label_638
	mov	byte ptr [rcx + r14], al
.label_638:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_639
	jmp	.label_626
.label_715:
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
	jmp	.label_657
.label_722:
	mov	rcx, qword ptr [rsp + 0x10]
.label_626:
	cmp	r14, rbp
	jae	.label_656
	mov	byte ptr [rcx + r14], 0
	jmp	.label_656
.label_618:
	mov	eax, 5
	jmp	.label_663
.label_624:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f00
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
	#Procedure 0x406fd0
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
	je	.label_726
	mov	qword ptr [rax], rbx
.label_726:
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
	#Procedure 0x4070c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_727
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_730:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_730
.label_727:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_731
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_728], OFFSET FLAT:slot0
.label_731:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_729
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_729:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407160
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407170

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
	js	.label_735
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_738
	cmp	r12d, 0x7fffffff
	je	.label_733
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
	jne	.label_736
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_736:
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
.label_738:
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
	jbe	.label_734
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_737
.label_734:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_732
	mov	rdi, r14
	call	free
.label_732:
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
.label_737:
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
.label_735:
	call	abort
.label_733:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407330
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340
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
	#Procedure 0x407360
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
	#Procedure 0x407380

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
	je	.label_739
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
.label_739:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0
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
	je	.label_740
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
.label_740:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407460
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
	je	.label_741
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
.label_741:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0
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
	je	.label_742
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
.label_742:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407540
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
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
	#Procedure 0x4075b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
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
	#Procedure 0x407620

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
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
	#Procedure 0x407680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
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
	#Procedure 0x4076e0

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
	je	.label_746
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
.label_746:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407780
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_747
	test	rdx, rdx
	je	.label_747
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_747:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4077f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_748
	test	rdx, rdx
	je	.label_748
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_748:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407860
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_749
	test	rsi, rsi
	je	.label_749
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_749:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4078d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_743]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_744]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_745]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_750
	test	rsi, rsi
	je	.label_750
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
.label_750:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407940
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407950
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
	#Procedure 0x407970

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

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
	#Procedure 0x4079b0

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
	jne	.label_752
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_757
	cmp	ecx, 0x55
	jne	.label_751
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_751
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_751
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_751
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_751
	cmp	byte ptr [rax + 5], 0
	jne	.label_751
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_754
	mov	eax, OFFSET FLAT:label_755
	jmp	.label_756
.label_757:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_751
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_751
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_751
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_751
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_751
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_751
	cmp	byte ptr [rax + 7], 0
	je	.label_753
.label_751:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_602
	mov	eax, OFFSET FLAT:label_700
.label_756:
	cmove	rax, rcx
.label_752:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_753:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_758
	mov	eax, OFFSET FLAT:label_759
	jmp	.label_756
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_763
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_763
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_763
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_763
	cmp	rcx, -1
	je	.label_766
	inc	rcx
	mov	rbp, rcx
.label_763:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_760
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_762:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_768
	cmp	rbp, -1
	je	.label_761
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_762
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_764
.label_768:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_764
	dec	rbp
	cmp	r14, rbp
	jae	.label_765
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_765:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_760
.label_761:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_764:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_767:
	xor	r12d, r12d
.label_760:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_766:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_767
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_769
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_770
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_770
	test	r15, r15
	je	.label_771
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_771:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_770:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c80
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_772
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_773
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_773
	test	r15, r15
	je	.label_774
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_774:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_773:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cf0

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_776
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_779
	test	r14d, r14d
	je	.label_786
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, r12
	jle	.label_785
	lea	rbp, [rsp + 8]
	nop	
.label_791:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_788
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_788
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_791
.label_788:
	mov	rbp, qword ptr [rsp + 0x20]
.label_785:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_782
.label_786:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	jle	.label_782
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_787:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_777
	test	ebp, ebp
	jne	.label_778
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_775
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_784
	xor	ebp, ebp
	jmp	.label_775
	nop	dword ptr [rax + rax]
.label_777:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_775
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_775
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_780
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_780
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_775
	nop	
.label_778:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_780
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_775
	jmp	.label_780
.label_784:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_775
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_775
	nop	word ptr cs:[rax + rax]
.label_780:
	mov	ebp, 1
.label_775:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_787
	cmp	ebp, 2
	jne	.label_782
	mov	byte ptr [r15], 0
	jmp	.label_782
.label_779:
	test	r14d, r14d
	je	.label_789
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_781
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_783:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_781
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_783
.label_781:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_782
.label_789:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_782
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_790:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_782
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_790
.label_782:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_776:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407fa0

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
	je	.label_804
	mov	edx, OFFSET FLAT:label_795
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_801
.label_804:
	mov	edx, OFFSET FLAT:label_802
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_801:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
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
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_807
	jmp	qword ptr [(r12 * 8) + label_808]
.label_3089:
	add	rsp, 8
	jmp	.label_794
.label_807:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_798
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
	jmp	.label_794
.label_3090:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
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
.label_3091:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
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
.label_3092:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
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
.label_3093:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
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
	jmp	.label_794
.label_3094:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_809
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
	jmp	.label_794
.label_3095:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_792
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
	jmp	.label_794
.label_3096:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_797
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
	jmp	.label_794
.label_3098:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_800
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
	jmp	.label_794
.label_3097:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_805
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
.label_794:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408300
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_811:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_811
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_822
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_824
.label_822:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_824:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_812
	cmp	r10d, 0x29
	jae	.label_821
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_823
.label_821:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_823:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_812
	cmp	r10d, 0x29
	jae	.label_819
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_820
.label_819:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_820:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_812
	cmp	r10d, 0x29
	jae	.label_817
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_818
.label_817:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_818:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_812
	cmp	r10d, 0x29
	jae	.label_815
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_816
.label_815:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_816:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_812
	cmp	r10d, 0x29
	jae	.label_813
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_814
.label_813:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_814:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_812
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_812
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_812
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_812
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_812:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408520

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_825
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_825:
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
	#Procedure 0x4085b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_827
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_829
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_828
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408630
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_830
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_831
	test	rax, rax
	je	.label_830
.label_831:
	pop	rbx
	ret	
.label_830:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_832
	test	rax, rax
	je	.label_833
.label_832:
	pop	rbx
	ret	
.label_833:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408690
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_834
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_835
	test	rbx, rbx
	jne	.label_835
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_835:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_836
	test	rax, rax
	je	.label_834
.label_836:
	pop	rbx
	ret	
.label_834:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_837
	test	rbx, rbx
	jne	.label_837
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_837:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_839
	test	rax, rax
	je	.label_838
.label_839:
	pop	rbx
	ret	
.label_838:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408710
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_843
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_845
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_840
.label_843:
	test	rcx, rcx
	jne	.label_846
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_846:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_841
.label_840:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_842
	test	rbx, rbx
	jne	.label_842
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_842:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_844
	test	rax, rax
	je	.label_845
.label_844:
	pop	rbx
	ret	
.label_845:
	call	xalloc_die
.label_841:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_847
	test	rax, rax
	je	.label_848
.label_847:
	pop	rbx
	ret	
.label_848:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_851
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_853
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_850
	call	free
	xor	eax, eax
	jmp	.label_852
.label_851:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_849
	mov	qword ptr [rsi], rbx
.label_850:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_852
	test	rax, rax
	je	.label_849
.label_852:
	pop	rbx
	ret	
.label_849:
	call	xalloc_die
.label_853:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408840
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
	je	.label_855
	test	r14, r14
	je	.label_854
.label_855:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_854:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408880
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_856
	call	rpl_calloc
	test	rax, rax
	je	.label_856
	pop	rcx
	ret	
.label_856:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

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
	je	.label_857
	test	r15, r15
	je	.label_858
.label_857:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4088f0
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
	je	.label_860
	test	r15, r15
	je	.label_859
.label_860:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_859:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408970
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_863
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_862
.label_863:
	mov	eax, ebx
	pop	rbx
	ret	
.label_862:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408990
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_865
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_864
.label_865:
	mov	rax, rbx
	pop	rbx
	ret	
.label_864:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_867
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_866
.label_867:
	mov	rax, rbx
	pop	rbx
	ret	
.label_866:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_905
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_900
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_887
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_885
	mov	r13d, 1
.label_887:
	test	r14, r14
	je	.label_893
	mov	r15d, r13d
	jmp	.label_897
.label_900:
	mov	r13d, 4
	test	r14, r14
	je	.label_885
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_885
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_885
.label_897:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_907
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_890
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_868
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_868
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_868
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_873
	cmp	eax, 0x44
	je	.label_873
	cmp	eax, 0x69
	jne	.label_868
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_868
.label_893:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_885
.label_873:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_868:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_890
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_894]
.label_3264:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_901
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_901:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_911
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_911:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_916
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_916:
	or	ecx, r14d
	jmp	.label_872
.label_890:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_875
.label_3265:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_872
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_872
.label_3266:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_891
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_891:
	cmp	rsi, rdi
	jl	.label_904
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_904:
	or	ecx, r11d
	jmp	.label_872
.label_3268:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_912
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_912:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_869
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_869:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_881
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_881:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_889
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_889:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_872
.label_3262:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_878
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_892
.label_3263:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_883
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_883:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_920
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_920:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_880
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_880:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_884
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_884:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_895
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_895:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_903
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_903:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_872
.label_3267:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_914
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_914:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_871
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_871:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_882
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_882:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_910
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_910:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_902
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_902:
	or	ecx, r14d
	jmp	.label_872
.label_3269:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_909
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_909:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_921
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_921:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_877
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_877:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_886
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_886:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_896
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_896:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_906
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_906:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_913
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_913:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_874
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_879
.label_3270:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_876
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_876:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_888
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_888:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_899
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_899:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_908
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_908:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_915
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_915:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_870
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_870:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_874
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_879:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_874:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_872
.label_3271:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_878
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_892
.label_3272:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_898
.label_878:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_872
.label_898:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_892:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_872:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_907:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_875:
	mov	r13d, r15d
.label_885:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_905:
	mov	edi, OFFSET FLAT:label_917
	mov	esi, OFFSET FLAT:label_918
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_919
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_922
	test	rsi, rsi
	mov	ecx, 1
	je	.label_923
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_923
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_922:
	mov	ecx, 1
.label_923:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409360

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_924
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_925
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_924
.label_925:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_924
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_926
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_926:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_924:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_927
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_927
	test	byte ptr [rbx + 1], 1
	je	.label_927
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_927:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409420

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_928
	test	rbx, rbx
	je	.label_928
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_928
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_928
	mov	edi, OFFSET FLAT:label_542
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_929
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_928
.label_929:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_928:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094c0

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
	jne	.label_930
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_930
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_931
.label_930:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_931:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_932
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_932:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409530

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
	je	.label_933
	cmp	r15, -2
	jb	.label_933
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_933
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_933:
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
	#Procedure 0x409590

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_934
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_934:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095f0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_1178
.label_1389:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1188
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1214:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1214
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_1227
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1227
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1227
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1227
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1227
	or	byte ptr [r12 + 0xb0], 4
.label_1227:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1237
	test	al, 4
	jne	.label_1472
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_1188
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1257:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1499
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1499:
	cmp	ebp, 0x7f
	ja	.label_1255
	cmp	ebp, eax
	je	.label_1255
	or	byte ptr [r12 + 0xb0], 8
.label_1255:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1257
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1268:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1263
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1263:
	cmp	ebx, eax
	je	.label_1469
	or	byte ptr [r12 + 0xb0], 8
.label_1469:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1268
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1281:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1274
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1274:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1281
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1283:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1282
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1282:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1283
	jmp	.label_1237
.label_1472:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1237:
	cmp	qword ptr [r12], 0
	je	.label_1188
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1188
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_1287
	cmp	edx, 2
	jl	.label_1321
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_991
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_991
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1321:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_1328
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_991
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_1328:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_1336
.label_1188:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1344
.label_1287:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1336:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1350
	cmp	ecx, 2
	jl	.label_1355
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_991
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1378:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_1359
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_1359
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_1366
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_991
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_991
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1366
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_991
	mov	qword ptr [rsp + 0x60], rax
.label_1366:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1373
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_991
	mov	qword ptr [rsp + 0x50], rax
.label_1373:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_1378
.label_991:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1383
.label_1350:
	cmp	ecx, 2
	jl	.label_1385
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_1359
.label_1355:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1387
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1393
	nop	dword ptr [rax]
.label_1408:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_1393:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1401
.label_1411:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1404
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1404:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1408
	jmp	.label_1410
.label_1401:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_1411
.label_1385:
	test	rbx, rbx
	je	.label_1337
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1342
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_1342
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1382:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1382
	mov	rcx, rdi
.label_1342:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_1359
.label_1410:
	mov	rax, r13
	jmp	.label_1387
.label_1337:
	mov	rax, qword ptr [rsp + 8]
.label_1387:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_1359:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_1431
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1433
.label_1431:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1434
	mov	rax, qword ptr [rbx + 0x70]
.label_1398:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1394:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1446
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1450
	mov	rax, qword ptr [rbx + 0x70]
.label_1405:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_1105
	mov	qword ptr [rbp], rcx
.label_1446:
	test	rbp, rbp
	je	.label_1105
	test	rcx, rcx
	je	.label_1105
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1097
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_1097
	test	rax, rax
	je	.label_1097
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_1097
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_1479
	test	rbp, rbp
	je	.label_958
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_961
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_961
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_1223
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_1352
.label_1479:
	lea	r12, [r8 + 0x68]
	jmp	.label_1049
.label_1223:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_946]
	movdqa	xmm9, xmmword ptr [rip + label_947]
	movdqa	xmm10, xmmword ptr [rip + label_1482]
	movdqa	xmm11, xmmword ptr [rip + label_1483]
	movdqa	xmm5, xmmword ptr [rip + label_1484]
	movdqa	xmm6, xmmword ptr [rip + label_1485]
	movdqa	xmm7, xmmword ptr [rip + label_1486]
	movdqa	xmm1, xmmword ptr [rip + label_1487]
	nop	word ptr cs:[rax + rax]
.label_1449:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1449
.label_1352:
	test	rdx, rdx
	je	.label_944
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_946]
	movdqa	xmm2, xmmword ptr [rip + label_947]
	nop	word ptr cs:[rax + rax]
.label_955:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_955
.label_944:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_958
	nop	dword ptr [rax]
.label_961:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_961
.label_958:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_963
	cmp	cl, 4
	jne	.label_964
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_964
.label_963:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_964
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_964
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_978
	mov	qword ptr [rsi], rdx
.label_978:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_964
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_964:
	lea	r12, [r8 + 0x68]
	jmp	.label_989
.label_1043:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_989:
	mov	rsi, rax
.label_1011:
	test	rsi, rsi
	jne	.label_992
	mov	rdi, rdx
.label_1010:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_994
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1002:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_997
	test	rdx, rdx
	jne	.label_994
.label_997:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_1002
	jmp	.label_1005
.label_994:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1007
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_1010
	jmp	.label_1011
.label_1007:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_1010
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_1010
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_1013
.label_1034:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_992:
	mov	rbp, rdx
.label_1031:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_1024
	xor	ecx, ecx
.label_1025:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_1021
	test	rdx, rdx
	jne	.label_1024
.label_1021:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_1025
	jmp	.label_1005
	nop	
.label_1024:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1030
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_1031
	jmp	.label_1034
.label_1030:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_1031
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_1031
	lea	rsi, [rdx + 8]
.label_1013:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_1039
	mov	qword ptr [rbp], rdx
.label_1039:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_1011
	jmp	.label_1043
.label_1005:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_1044
	xor	edx, edx
	nop	dword ptr [rax]
.label_1048:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_1044
	inc	rdx
	cmp	rdx, rcx
	jb	.label_1048
.label_1044:
	cmp	rdx, rcx
	jne	.label_1049
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_1049:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1035:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1035
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1035
	xor	ecx, ecx
	jmp	.label_1055
	nop	dword ptr [rax]
.label_1073:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_1055:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_1056
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_1056
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1056
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_1056:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_1065
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_1065
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1065
	mov	qword ptr [rax], rbx
	nop	
.label_1065:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_966
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_1069
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_1073
	test	rax, rax
	je	.label_1073
	jmp	.label_1035
.label_1069:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_1080:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_1080
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_1080
	nop	word ptr cs:[rax + rax]
.label_1110:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_1084
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1084:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_1097
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_1085
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1085:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1107
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_1110
	test	rax, rax
	mov	rbp, rcx
	je	.label_1110
	jmp	.label_1080
.label_1107:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_1115
	cmp	al, 0xb
	jne	.label_1118
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_1120
.label_1115:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1121
.label_1118:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1306
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1306:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_1120
.label_1121:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1120:
	mov	rdx, rbp
	jmp	.label_1128
.label_1137:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_1128:
	test	rax, rax
	mov	rcx, rax
	jne	.label_1130
	xor	eax, eax
	nop	dword ptr [rax]
.label_1134:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1132
	test	rcx, rcx
	jne	.label_1130
.label_1132:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_1134
	jmp	.label_1135
	nop	
.label_1130:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_1137
	cmp	al, 0xb
	jne	.label_1407
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1128
.label_1407:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1422
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1422:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_1128
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1128
.label_1135:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_966
	nop	word ptr [rax + rax]
.label_1157:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1153
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1154:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1152
	test	rbx, rbx
	jne	.label_1153
.label_1152:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1154
	jmp	.label_1155
	nop	
.label_1153:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_1157
	jmp	.label_966
.label_1155:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_1158
	nop	dword ptr [rax + rax]
.label_1167:
	inc	rbp
	mov	rax, rbp
.label_1158:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1160
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_1161
	jmp	.label_1164
	nop	dword ptr [rax]
.label_1160:
	mov	rbp, rax
.label_1161:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1167
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_966
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_1167
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_1167
.label_1164:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_1175
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_1175
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_1181
.label_1175:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_1183
.label_1181:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_1097
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_1183
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_1186
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_1187:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1187
.label_1186:
	test	rax, rax
	je	.label_1183
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1225:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_1198
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1218:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_1202
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1208
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_1210
	nop	word ptr cs:[rax + rax]
.label_1202:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_1210:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1218
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_1198:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1225
.label_1183:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1061
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1061
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1061
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_1443
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1259:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_1470
	jmp	qword ptr [(rsi * 8) + label_1244]
.label_3297:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1247
	mov	esi, r10d
.label_1247:
	mov	r10b, sil
	jmp	.label_1249
.label_3298:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1061
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1249
	jmp	.label_1061
.label_3299:
	mov	r9b, 1
	jmp	.label_1249
.label_3300:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1254
	bt	r8, rbx
	jb	.label_1249
.label_1254:
	cmp	esi, 0x80
	jne	.label_1061
.label_1249:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1259
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1261
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1265
.label_1097:
	mov	eax, 0xc
.label_966:
	mov	dword ptr [rsp + 4], eax
.label_1383:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1267
.label_1279:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1265:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1269
	cmp	sil, 1
	jne	.label_1271
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1271
	and	esi, 0xffdfffff
	jmp	.label_1275
.label_1269:
	and	esi, 0xffffff00
	or	esi, 7
.label_1275:
	mov	dword ptr [rbp + rdx], esi
.label_1271:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1279
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1261
.label_1443:
	xor	ecx, ecx
.label_1261:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1061:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_1138
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1289
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1295
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1295
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1299
	nop	dword ptr [rax + rax]
.label_1332:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1299:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1301
	test	r13, r13
	mov	edi, 0
	jle	.label_1308
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1313:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1315
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1308
.label_1315:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1313
.label_1308:
	cmp	rdi, r13
	je	.label_1301
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1316
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1320
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1322:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_1322
.label_1320:
	cmp	rsi, -1
	je	.label_1316
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1301
.label_1316:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1329
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1301:
	inc	rax
	cmp	rax, r13
	jl	.label_1332
	jmp	.label_1295
.label_1138:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1295:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1481
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1346
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1347
.label_1346:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_1362
	test	rax, rax
	je	.label_1362
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1362
.label_1347:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_1329:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1068
	nop	dword ptr [rax]
.label_1370:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1370
.label_1068:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1375
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1375:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_1344
	jmp	.label_1376
.label_1362:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1329
.label_1208:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_966
.label_1178:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1344
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1389
.label_1434:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1394
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1398
.label_1450:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1105
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1405
.label_1105:
	mov	dword ptr [rsp + 4], 0xc
.label_1433:
	mov	qword ptr [r12 + 0x68], 0
.label_1267:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1412
	nop	word ptr cs:[rax + rax]
.label_1417:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1417
.label_1412:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1376
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1376:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_1344:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1481:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1329
.label_1289:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1329
.label_1470:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ad40
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ad50

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1508
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1508:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1507
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1507:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1509
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1509:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae20

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_1517
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1523
.label_1517:
	mov	dword ptr [rsp + 0xc], 0
.label_1523:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1122
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_1117:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_999
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1474]
.label_3305:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1467
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1477
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1477:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1467:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_999
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_999
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_1480
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_1489:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1480
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_1489
.label_1480:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1495
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1495
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1495:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1399
	nop	word ptr [rax + rax]
.label_3307:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1498
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_940:
	bt	rbp, rbx
	jae	.label_1503
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1504
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1506
	nop	word ptr cs:[rax + rax]
.label_1504:
	mov	eax, ebx
.label_1506:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1503:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_940
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_959:
	bt	r13, rbp
	jae	.label_951
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_952
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1356
	nop	word ptr [rax + rax]
.label_952:
	lea	rax, [rbp + 0x40]
.label_1356:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_951:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_959
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_983:
	bt	r13, rbp
	jae	.label_965
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_967
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_976
	nop	dword ptr [rax]
.label_967:
	mov	rax, rbp
	sub	rax, -0x80
.label_976:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_965:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_983
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1229:
	bt	r12, rbp
	jae	.label_987
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_990
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_993
	nop	dword ptr [rax]
.label_990:
	lea	rax, [rbp + 0xc0]
.label_993:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_987:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1229
	jmp	.label_999
	nop	dword ptr [rax]
.label_3308:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_1001
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1009
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1009
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1001
.label_1009:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1334:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_1019
	mov	byte ptr [r15 + rcx], 1
.label_1019:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_1334
.label_1399:
	mov	rbx, r12
	jmp	.label_999
.label_1001:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_999
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_1026
	nop	word ptr cs:[rax + rax]
.label_1051:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1038
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1040
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1040:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_1038:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1045
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1045
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1045
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1045:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1051
	jmp	.label_999
	nop	word ptr cs:[rax + rax]
.label_1026:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_957
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_957:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1027
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1027
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1027
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1027:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1026
	jmp	.label_999
.label_1498:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1077:
	bt	rbp, rax
	jae	.label_1070
	mov	byte ptr [r15 + rax], 1
.label_1070:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_1074
	mov	byte ptr [r15 + rax + 1], 1
.label_1074:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_1077
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1087:
	bt	rax, rcx
	jae	.label_1082
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1082:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1083
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1083:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1087
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1101:
	bt	rax, rcx
	jae	.label_1096
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1096:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1194
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1194:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1101
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1113:
	bt	rax, rcx
	jae	.label_1109
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1109:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1112
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1112:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1113
	nop	dword ptr [rax + rax]
.label_999:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_1117
	jmp	.label_1122
.label_3306:
	movaps	xmm0, xmmword ptr [rip + label_64]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_1122
	or	byte ptr [r13 + 0x38], 1
.label_1122:
	add	rsp, 0x138
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
	#Procedure 0x40b4c0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1604
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1607
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1608
.label_1607:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1608:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_1606
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1602
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1602:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1603
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1603:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_1605
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1605:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_1604:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1606:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1604
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b670
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1609
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1612
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1610
.label_1611:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1612:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1610:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1611
.label_1609:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6f0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1613
	call	free_dfa_content
.label_1613:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b730

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1619
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1619
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1623
	nop	dword ptr [rax]
.label_1624:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1623:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1626
	cmp	ecx, 6
	jne	.label_1629
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1617
	nop	word ptr cs:[rax + rax]
.label_1626:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1617:
	call	free
.label_1629:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1624
.label_1619:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1622
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1625:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1628
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1628:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1614
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1614:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1630
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1630:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1625
	jmp	.label_1620
.label_1622:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1620:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1621
	xor	r15d, r15d
	jmp	.label_1627
.label_1618:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1627:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1631
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1616:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1616
.label_1631:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1618
	mov	rdi, qword ptr [r14 + 0x40]
.label_1621:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1615
	call	free
.label_1615:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b900
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_1632
	test	bl, 4
	jne	.label_1633
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1634
.label_1633:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1634:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1635
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_1636
.label_1635:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_1636:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1632:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1645
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1645:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1127
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1127
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_1127
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1127
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1127
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1646
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_1641
.label_1646:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1650
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1651
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1650
.label_1651:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_1637
	test	r8, r8
	mov	ebp, 0
	jne	.label_1127
	jmp	.label_1641
.label_1650:
	mov	qword ptr [rsp + 8], r8
.label_1641:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_1642
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_1642:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_1648
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_969
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_969
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_1648:
	mov	al, 1
	test	r12b, r12b
	je	.label_1649
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_969
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_1649:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_1639
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_1639:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_1647
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_969
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_969
	test	rax, rax
	je	.label_969
.label_1647:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_1638
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1638
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_1643
.label_1638:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_969
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_969
.label_1643:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1652
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_1644
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1640
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1640
.label_1644:
	mov	eax, 4
.label_1640:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1652:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_1297
.label_1637:
	xor	ebp, ebp
	jmp	.label_1641
.label_1003:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_1461
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1029
	jmp	.label_969
.label_1149:
	test	al, al
	js	.label_1488
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_1442
	mov	rbp, rbx
	jmp	.label_1240
.label_1146:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_1490
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_960
.label_1488:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_1494
	or	rdx, rbx
	jmp	.label_1442
.label_1494:
	mov	rbp, rbx
	jmp	.label_1240
.label_986:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_1233
.label_941:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_949
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_1501
.label_960:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_936
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_936
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_936
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_941
.label_1501:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_949
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_936:
	inc	rbx
	cmp	rbx, rax
	jl	.label_960
.label_1490:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_962
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_968
.label_962:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_974
.label_949:
	mov	ebp, 0xc
	jmp	.label_1430
.label_968:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_1240
	nop	
.label_1297:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_984
	jmp	qword ptr [(rax * 8) + label_1170]
.label_3314:
	cmp	rbp, r14
	jl	.label_985
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_988
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1000:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_996
	movzx	eax, byte ptr [rdx + rbp]
.label_996:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_985
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1000
	jmp	.label_1006
.label_3316:
	cmp	rbp, r12
	jge	.label_1008
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_1014:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1008
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1014
	jmp	.label_1008
.label_3315:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_1008
	nop	dword ptr [rax]
.label_1020:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1008
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1020
	nop	word ptr [rax + rax]
.label_1008:
	cmp	rbp, r12
	jne	.label_971
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1028
	movzx	eax, byte ptr [rcx + r12]
.label_1028:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_1032
	movzx	eax, byte ptr [rcx + rax]
.label_1032:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_971
	jmp	.label_969
.label_984:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_1041
	nop	word ptr cs:[rax + rax]
.label_1058:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_969
	cmp	rbp, r12
	jle	.label_1041
	jmp	.label_969
.label_1053:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_969
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1497
	nop	dword ptr [rax + rax]
.label_1041:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_1053
.label_1497:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_1054
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_1054:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_1058
	jmp	.label_971
.label_988:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1066:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1063
	movzx	eax, byte ptr [rdx + rbp]
.label_1063:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_985
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1066
	jmp	.label_1006
	nop	word ptr [rax + rax]
.label_985:
	mov	rax, rbp
.label_1006:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_969
.label_971:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_969
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_1075
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_1075
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_1079
.label_1075:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_1081
	test	rbx, rbx
	jle	.label_1089
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1095
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1098
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_1104:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1103
	dec	rcx
	jg	.label_1104
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1108
.label_1098:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_1111
	cmp	al, 0xa
	je	.label_1116
	jmp	.label_1081
.label_1103:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1119
.label_1141:
	cmp	ebp, 0xa
	jne	.label_1081
.label_1116:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1108:
	test	cl, 1
	jne	.label_1111
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_1124
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_1126
	test	sil, sil
	jne	.label_1126
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_1129
	nop	dword ptr [rax]
.label_1081:
	mov	rbp, rbx
	jmp	.label_1124
.label_1126:
	test	edx, edx
	jne	.label_1131
	test	eax, eax
	je	.label_1129
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_1129
.label_1131:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_1129
.label_1089:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1108
.label_1095:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_1108
.label_1119:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_1111
	test	eax, eax
	je	.label_1141
.label_1111:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_1124:
	mov	bl, byte ptr [rsp + 2]
.label_1129:
	test	r14, r14
	je	.label_1143
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_974
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_1146
.label_974:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_1149
.label_1442:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_1505:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_1156
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_1159
.label_1168:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1163
	jmp	.label_1166
.label_1190:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1456
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_1169
.label_1388:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_1172
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_1173
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1174
	mov	rcx, qword ptr [rsp + 0x70]
.label_1180:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_1177
	dec	rax
	jg	.label_1180
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1173
.label_1441:
	cmp	r13, r14
	je	.label_1184
	mov	dword ptr [rsp + 8], 0
.label_1184:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_1185
.label_1174:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1173
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1191
	jmp	.label_1173
.label_1177:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1192
.label_1371:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_1173
.label_1191:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1173:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_1211
.label_1323:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1197
.label_1403:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_1197
.label_1340:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1201
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_1203
	jmp	.label_1197
.label_1201:
	lea	r15, [rsp + 0x98]
	jmp	.label_1197
.label_1169:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_1133
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_1099
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_1213
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_1216
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1220
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_1222:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1221
	dec	rdx
	test	rdx, rdx
	jg	.label_1222
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1226
.label_1220:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_1416
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_1234
.label_1221:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1236
.label_1260:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_1238
	jmp	.label_1226
.label_1416:
	cmp	al, 0xa
	jne	.label_1226
.label_1238:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_1226:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_1234
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_1133
	jmp	.label_1248
.label_1213:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1226
.label_1216:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_1226
.label_1236:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_1258
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_1260
	jmp	.label_1248
.label_1258:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_1234:
	mov	eax, dword ptr [rsp + 0x10]
.label_1248:
	test	ah, 8
	je	.label_1276
	test	dl, dl
	je	.label_1133
.label_1276:
	test	ah, 0x20
	je	.label_1278
	mov	eax, r9d
	and	eax, 2
	je	.label_1133
.label_1278:
	test	dil, dil
	jns	.label_1099
	and	r9d, 8
	je	.label_1133
.label_1099:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_1133
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_1285
	cmp	rcx, rax
	jl	.label_1290
.label_1285:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_1292
	cmp	rcx, rax
	jge	.label_1292
.label_1290:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_1296
.label_1292:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_1298
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_1298:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_1307
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_1318
	jmp	.label_1018
.label_1307:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_1318:
	test	rbp, rbp
	jle	.label_1323
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1403
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1419
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_1330:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1327
	dec	rcx
	jg	.label_1330
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1197
.label_1419:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1197
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1338
	jmp	.label_1197
.label_1327:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1340
.label_1203:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_1197
.label_1338:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1197:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_1351
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_1351:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_1133
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_1018
.label_1133:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_1169
.label_1456:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_1363
.label_1296:
	mov	dword ptr [rsp + 0x1f8], eax
.label_1018:
	mov	dword ptr [rsp + 4], eax
.label_1397:
	xor	r14d, r14d
	jmp	.label_1211
.label_1172:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1173
.label_1192:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_1369
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_1371
	jmp	.label_1173
.label_1369:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_1173
	nop	dword ptr [rax + rax]
.label_1159:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_1372
	cmp	rcx, rax
	jl	.label_1168
.label_1372:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_1166
	cmp	rcx, rax
	jl	.label_1168
.label_1166:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_1190
.label_1363:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_1395:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_1386
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_1388
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_1395
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_1397
	nop	word ptr [rax + rax]
.label_1386:
	mov	r14, qword ptr [rax + rbp*8]
.label_1211:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_1400
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_1400:
	test	r14, r14
	jne	.label_1406
	cmp	dword ptr [rsp + 4], 0
	jne	.label_1090
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_1409
	jmp	.label_1415
	nop	word ptr cs:[rax + rax]
.label_1246:
	mov	rax, qword ptr [rsp + 0x118]
.label_1409:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_1421:
	cmp	rdx, rcx
	jge	.label_1415
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1421
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_1423
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_1246
.label_1423:
	test	r14, r14
	je	.label_1415
	nop	word ptr [rax + rax]
.label_1406:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_1441
.label_1185:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_1425
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_1426
	nop	word ptr cs:[rax + rax]
.label_1425:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_1429
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1429
.label_1426:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_1159
	jmp	.label_1156
.label_1429:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_1505
	jmp	.label_1240
	nop	word ptr cs:[rax + rax]
.label_1415:
	mov	r12, qword ptr [rsp + 0x40]
.label_1156:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_1437
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_1437:
	mov	rbp, qword ptr [rsp + 0x168]
.label_1240:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1029
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_969
.label_1430:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_1451
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_1459
.label_1451:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1461
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_1162
.label_1459:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1463
.label_1162:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1461
.label_1463:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_1090
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_1471
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1475
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_1476
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_1293
.label_1475:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1003
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_942
	jmp	.label_1496
.label_950:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_1293:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1003
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_935
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_935
	test	rbp, rbp
	jle	.label_942
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_953:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_948
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_950
.label_948:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_953
.label_942:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_1029:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_1079:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_969
	cmp	r12, rbp
	jge	.label_1297
	jmp	.label_969
.label_935:
	test	rbp, rbp
	js	.label_972
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_975
	nop	word ptr cs:[rax + rax]
.label_998:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_975:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_982
	test	rdx, rdx
	je	.label_973
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_986
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_973
	jmp	.label_1233
.label_982:
	mov	qword ptr [r14 + r15*8], rdx
.label_973:
	cmp	r15, rbp
	jl	.label_998
.label_972:
	xor	ebx, ebx
.label_1233:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1003
.label_1496:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_1461:
	test	r15, r15
	je	.label_1150
	cmp	r15, 1
	je	.label_1015
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1015:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_1023
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1023
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1033
	xor	eax, eax
	jmp	.label_1037
.label_1150:
	xor	ebx, ebx
	jmp	.label_969
.label_1033:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1037:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_969
.label_1023:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_1046
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_1047
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_1057:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_1492
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_1492:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_1502
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_1502:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_1057
.label_1047:
	test	rdx, rdx
	je	.label_1060
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_1060
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_1060:
	test	rbx, rbx
	jle	.label_1067
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1067:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_1059
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_969
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1088:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1123
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1123:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_1088
	jmp	.label_969
.label_1059:
	xor	ebx, ebx
	jmp	.label_969
.label_1163:
	cmp	eax, 0xc
	je	.label_1090
	mov	edi, OFFSET FLAT:label_1092
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1094
	call	__assert_fail
.label_1143:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_1090
	mov	edi, OFFSET FLAT:label_1092
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1094
	call	__assert_fail
.label_1476:
	mov	qword ptr [rsp + 0x1e8], r14
.label_1471:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_1090:
	mov	ebx, 0xc
.label_969:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1114
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_1114:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_1127
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_1127:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1046:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_1145:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_1391
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_1391:
	add	rcx, 0x10
	dec	rdx
	jne	.label_1145
	jmp	.label_1060
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d510

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d530

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1673
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1673
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1685
	mov	r12, r8
.label_1685:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1661
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1661
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1661
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1666
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1666:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1676
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1676:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1680
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1680:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1661:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1655
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1655
	and	al, 6
	cmp	al, 4
	jne	.label_1663
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1665
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1670
	mov	r14, rsi
.label_1670:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1655
	mov	r15, rax
	jmp	.label_1655
.label_1663:
	mov	r15, qword ptr [rdi + 0x30]
.label_1665:
	inc	r15
	mov	r14, rsi
.label_1655:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1673
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1669
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1656:
	call	free
.label_1673:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1669:
	test	r14, r14
	mov	rdi, r12
	je	.label_1662
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1682
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1687
	test	al, al
	jne	.label_1654
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1678
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1674
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1684:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1679
.label_1682:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1679
	mov	edi, OFFSET FLAT:label_1686
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1660
	call	__assert_fail
.label_1687:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1688
	mov	rbx, rax
.label_1679:
	test	r15, r15
	jle	.label_1658
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1664
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1683:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1683
.label_1664:
	test	r9, r9
	je	.label_1689
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1689:
	mov	rbx, qword ptr [r14]
	jmp	.label_1657
.label_1658:
	xor	r15d, r15d
.label_1657:
	cmp	r15, rbx
	jae	.label_1667
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1677:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1677
	mov	ebp, r13d
	jmp	.label_1653
.label_1667:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1653:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1656
.label_1662:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1656
	cmp	rbp, rbx
	jne	.label_1675
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1656
.label_1688:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1678
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1681
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1684
.label_1674:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1668:
	call	free
.label_1678:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1653
.label_1654:
	mov	edi, OFFSET FLAT:label_1659
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1660
	call	__assert_fail
.label_1675:
	mov	edi, OFFSET FLAT:label_1671
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1672
	call	__assert_fail
.label_1681:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1668
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d9d0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9f0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1693
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1695
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1693
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1692
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1690
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1693
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1692
.label_1695:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1694
.label_1693:
	mov	rax, -2
	jmp	.label_1691
.label_1694:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1692
.label_1690:
	mov	r13, r15
.label_1692:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1691:
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
	#Procedure 0x40db00
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1696
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1699
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1696
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1697
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1700
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1696
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1697
.label_1699:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1698
.label_1696:
	mov	rax, -2
	jmp	.label_1701
.label_1698:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1697
.label_1700:
	mov	r13, r15
.label_1697:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1701:
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
	#Procedure 0x40dc10
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1702
	mov	eax, r9d
.label_1702:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc40

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1703
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1703:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dca0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1741
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1741
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1754
.label_1741:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1720
.label_1754:
	cmp	rdx, r15
	jle	.label_1761
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1734
.label_1760:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1711
	cmp	rbp, -2
	jne	.label_1708
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1708
.label_1711:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_1714
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1714
	nop	
.label_1734:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1728
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1728
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1714:
	mov	rax, r15
	jmp	.label_1726
	nop	dword ptr [rax]
.label_1728:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1760
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1704
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1727
	nop	word ptr cs:[rax + rax]
.label_1704:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1721
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1727:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1726
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1726:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1734
	jmp	.label_1737
.label_1721:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1738
.label_1708:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1761:
	mov	rax, r15
.label_1737:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1746
.label_1720:
	cmp	r15, rdx
	jge	.label_1752
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1738:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1755
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1729:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1710
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1712
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1740
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1725
.label_1755:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1729
	xor	esi, esi
.label_1756:
	cmp	rsi, rdx
	jge	.label_1729
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1756
	jmp	.label_1729
.label_1710:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1739
	cmp	r14, -2
	jne	.label_1719
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1719
.label_1739:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1747
.label_1742:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1757
.label_1745:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1709
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1709
.label_1740:
	cmp	rcx, -1
	je	.label_1712
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1715
.label_1719:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1752:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1746:
	xor	eax, eax
.label_1707:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1712:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1725:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1732
.label_1724:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1709
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1744
.label_1709:
	mov	rbp, r15
.label_1744:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1720
.label_1732:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1706
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1706
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1758
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_947]
	movdqa	xmm3, xmmword ptr [rip + label_946]
	movdqa	xmm4, xmmword ptr [rip + label_1483]
	movdqa	xmm5, xmmword ptr [rip + label_1482]
.label_1735:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1735
	jmp	.label_1736
.label_1715:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1733
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1763
.label_1733:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1748
	test	r15, r15
	je	.label_1743
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1713
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1713
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1764
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1753
.label_1758:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1736:
	test	rdx, rdx
	je	.label_1718
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_946]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1718:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1724
.label_1706:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1730:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1730
	jmp	.label_1724
.label_1763:
	mov	eax, 0xc
	jmp	.label_1707
.label_1764:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_946]
	movdqa	xmm9, xmmword ptr [rip + label_947]
	movdqa	xmm10, xmmword ptr [rip + label_1482]
	movdqa	xmm11, xmmword ptr [rip + label_1483]
	movdqa	xmm5, xmmword ptr [rip + label_1484]
	movdqa	xmm6, xmmword ptr [rip + label_1485]
	movdqa	xmm7, xmmword ptr [rip + label_1486]
	movdqa	xmm1, xmmword ptr [rip + label_1487]
.label_1759:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1759
.label_1753:
	test	rdx, rdx
	je	.label_1731
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_946]
	movdqa	xmm2, xmmword ptr [rip + label_947]
.label_1717:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1717
.label_1731:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1743
.label_1713:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1713
.label_1743:
	mov	byte ptr [r13 + 0x8c], 1
.label_1748:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1723
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1705
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1705
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1749]
	movdqa	xmm8, xmmword ptr [rip + label_946]
	movdqa	xmm9, xmmword ptr [rip + label_947]
	movdqa	xmm10, xmmword ptr [rip + label_1750]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1751],  0xe8
	mov	rdi, r8
.label_1722:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1722
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1723
.label_1705:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1716:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1716
.label_1723:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1762
	add	qword ptr [r13 + 0x68], rcx
.label_1762:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1720
.label_1747:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1742
.label_1757:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1745
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5d0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1769
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1773
	nop	dword ptr [rax + rax]
.label_1766:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1771
.label_1767:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1775:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1776
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1776:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1773
	jmp	.label_1774
.label_1770:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1775
.label_1772:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1765
	xor	eax, eax
.label_1768:
	cmp	rax, rdx
	jge	.label_1777
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1768
	lea	rsi, [rsp + 0x10]
	jmp	.label_1765
.label_1771:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1767
.label_1777:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1765
	nop	
.label_1773:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1772
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1765:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1766
	cmp	rax, -2
	jne	.label_1770
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1766
	mov	qword ptr [r14], rbp
.label_1769:
	mov	rcx, rbx
.label_1774:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40e750

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1781
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1784
.label_1781:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_1787
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_1779
	jmp	.label_1790
.label_1787:
	mov	r13, rbx
	jmp	.label_1784
.label_1785:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1796
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1799
	nop	word ptr cs:[rax + rax]
.label_1779:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1786
	cmp	eax, 9
	mov	r14d, 0
	je	.label_1786
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_1778
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1780
.label_1778:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_1786:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1785
	mov	rax, qword ptr [r15 + 0x70]
.label_1799:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1792
	mov	qword ptr [rbx], r13
.label_1792:
	test	r14, r14
	je	.label_1801
	mov	qword ptr [r14], r13
.label_1801:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1779
	jmp	.label_1784
.label_1794:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1796
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1782
	nop	word ptr [rax + rax]
.label_1790:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1798
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1789
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1780
.label_1789:
	or	qword ptr [r15 + 0xa8], r14
.label_1798:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1794
	mov	rax, qword ptr [r15 + 0x70]
.label_1782:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1793
	mov	qword ptr [rbx], r13
.label_1793:
	test	rbp, rbp
	je	.label_1788
	mov	qword ptr [rbp], r13
.label_1788:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1790
.label_1784:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1780:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_1784
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_1791:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1791
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1791
.label_1795:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1800
	cmp	eax, 6
	jne	.label_1783
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1797
.label_1800:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1797:
	call	free
.label_1783:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1784
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1795
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1795
	jmp	.label_1791
.label_1796:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1784
	.section	.text
	.align	32
	#Procedure 0x40eaf0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1840
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1808
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1808
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1824
.label_1808:
	cmp	bl, 0x5c
	jne	.label_1829
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1833
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1838
.label_1816:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1826:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1802
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_1821
.label_1840:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_937
.label_1829:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1836
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1837
.label_1833:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1817
.label_1836:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1837:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_937
	jmp	qword ptr [(rcx * 8) + label_1839]
.label_3318:
	mov	rcx, r12
	test	ch, 8
	je	.label_937
	jmp	.label_1418
.label_1802:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1821:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_937
	jmp	qword ptr [(rcx * 8) + label_1828]
.label_3194:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_937
.label_1824:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1817:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_937:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3319:
	mov	rdx, r12
	test	dl, 8
	jne	.label_1428
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1428
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_937
	mov	eax, dword ptr [r15 + 8]
.label_1428:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_937
.label_3320:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_937
	jmp	.label_1435
.label_3321:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_937
	jmp	.label_1436
.label_3322:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3323:
	test	r12w, 0x402
	jne	.label_937
	jmp	.label_1439
.label_3324:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3325:
	test	r12w, 0x402
	jne	.label_937
	jmp	.label_1448
.label_3326:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3327:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_1453
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1453
	test	dh, 8
	je	.label_937
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_937
.label_1453:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_937
.label_3328:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_937
	jmp	.label_1148
.label_3329:
	mov	rcx, r12
	test	ch, 4
	jne	.label_937
	test	cx, cx
	js	.label_1418
	jmp	.label_937
.label_3330:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_937
	jmp	.label_1200
.label_3190:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_937
.label_3191:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_937
.label_1435:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3192:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_937
.label_1436:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3193:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_937
.label_1439:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3195:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_937
.label_3196:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_937
.label_3197:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_937
.label_1448:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3198:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_937
.label_3199:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3200:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3201:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_937
.label_3202:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_937
.label_3203:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3204:
	test	r12d, 0x80000
	jne	.label_937
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3205:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_937
.label_1148:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3206:
	mov	rcx, r12
	test	ch, 4
	jne	.label_937
	test	cx, cx
	js	.label_937
.label_1418:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_3207:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_937
.label_1200:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_937
.label_1838:
	cmp	edx, 2
	jl	.label_1815
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1816
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1815
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1816
.label_1815:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1830
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1830:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1826
	test	bl, bl
	js	.label_1816
	jmp	.label_1826
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f110

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1852
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1846
.label_1852:
	cmp	qword ptr [rsp], 0
	jne	.label_1853
	jmp	.label_1855
	nop	word ptr cs:[rax + rax]
.label_1867:
	test	rbx, rbx
	cmove	rbx, r14
.label_1855:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_1856
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1862
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1864
.label_1862:
	test	rbx, rbx
	je	.label_1867
	test	r14, r14
	je	.label_1867
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1870
	mov	rax, qword ptr [r15 + 0x70]
.label_1851:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1855
.label_1870:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1847
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1851
	nop	word ptr cs:[rax + rax]
.label_1866:
	test	rbx, rbx
	cmove	rbx, r14
.label_1853:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1856
	cmp	eax, 9
	je	.label_1856
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1861
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1864
.label_1861:
	test	rbx, rbx
	je	.label_1866
	test	r14, r14
	je	.label_1866
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1869
	mov	rax, qword ptr [r15 + 0x70]
.label_1850:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1853
.label_1869:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1847
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1850
.label_1856:
	mov	r14, rbx
.label_1846:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1864:
	xor	r14d, r14d
	test	al, al
	je	.label_1846
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1859:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1859
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1859
.label_1873:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1860
	cmp	eax, 6
	jne	.label_1868
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1871
.label_1860:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1871:
	call	free
.label_1868:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1846
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1873
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1873
	jmp	.label_1859
.label_1847:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_1844:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_1844
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_1844
.label_1858:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1848
	cmp	eax, 6
	jne	.label_1849
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_1854
.label_1848:
	mov	rdi, qword ptr [r12 + 0x28]
.label_1854:
	call	free
	mov	rcx, rbp
.label_1849:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1857
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_1858
	test	r14, r14
	mov	r12, rax
	je	.label_1858
	jmp	.label_1844
.label_1857:
	mov	r14d, 0x400ff
.label_1845:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1845
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1845
.label_1843:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1863
	cmp	eax, 6
	jne	.label_1865
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1872
.label_1863:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1872:
	call	free
	mov	rcx, rbp
.label_1865:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1874
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1843
	test	rbx, rbx
	mov	r15, rax
	je	.label_1843
	jmp	.label_1845
.label_1874:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_1846
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f520

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_1140
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1875]
.label_3154:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_979
	mov	ecx, OFFSET FLAT:label_980
	jmp	.label_981
.label_3155:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_1165
	mov	ecx, OFFSET FLAT:label_90
.label_981:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1171
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_1402:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_1102
	jmp	.label_1140
.label_1171:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1102
.label_3145:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1176
	mov	rax, qword ptr [rdi + 0x70]
.label_1205:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_1179
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_1189
	mov	rbp, r14
	jmp	.label_1102
.label_1250:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1193
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1195
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_1235:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1228:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1207
	mov	rax, qword ptr [rsi + 0x70]
.label_1245:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_1147
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_1189
	jmp	.label_1102
.label_1195:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_1228
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1235
.label_1207:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1147
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1245
.label_1189:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_1250
	mov	rbp, r14
	jmp	.label_1102
.label_3146:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_1252
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1256
	mov	rax, qword ptr [rdi + 0x70]
.label_1231:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_1102
.label_3147:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1280
	mov	rax, qword ptr [rdi + 0x70]
.label_1353:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_1102
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_1102
.label_3148:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_1294
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_1140
	cmp	byte ptr [r10 + 8], 9
	jne	.label_1302
	mov	r15, rbp
.label_1294:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_1305
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_1305:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1310
	mov	rax, qword ptr [rsi + 0x70]
.label_1277:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1312
	mov	qword ptr [rdi], rbp
.label_1312:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_1102
.label_3151:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_1324
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_1314
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_1325
	movdqa	xmm0, xmmword ptr [rip + label_1331]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_1325
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_1314:
	mov	eax, dword ptr [r10]
.label_1324:
	cmp	eax, 0x200
	je	.label_1339
	cmp	eax, 0x100
	jne	.label_1341
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1343
	mov	rax, qword ptr [rdi + 0x70]
.label_1319:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1349
.label_3153:
	test	ebx, 0x1000000
	jne	.label_1360
.label_3150:
	test	bl, 0x20
	jne	.label_1360
	test	bl, 0x10
	jne	.label_1364
.label_3149:
	test	ebx, 0x20000
	jne	.label_1365
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_1365
	mov	dword ptr [r12], 0x10
	jmp	.label_1345
.label_1365:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1367
	mov	rax, qword ptr [rdi + 0x70]
.label_1196:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1064:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1102
.label_3152:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_1384
	test	r15, r15
	je	.label_1384
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_1390
	cmp	cl, 2
	je	.label_1392
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_1396
.label_3156:
	mov	dword ptr [r12], 5
	jmp	.label_1345
.label_1364:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_1179:
	mov	rbp, r14
	jmp	.label_1102
.label_1390:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_1414
	or	byte ptr [r14 + 1], 4
.label_1414:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_1392
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_1396:
	cmp	cl, 0x15
	jne	.label_1420
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_1420:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1243
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1424
.label_1377:
	cmp	al, 2
	je	.label_1427
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1424
	jmp	.label_1243
.label_3175:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_1432
	mov	rax, qword ptr [r15]
.label_1333:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1288
.label_3176:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_1438
	jmp	.label_1440
.label_1004:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_1272
.label_1266:
	xor	eax, eax
.label_1272:
	cmp	r15d, 3
	je	.label_1444
	test	r15d, r15d
	jne	.label_1445
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_1447
.label_1444:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_1447
.label_1445:
	xor	ebx, ebx
.label_1447:
	cmp	ebp, 3
	je	.label_1452
	test	ebp, ebp
	jne	.label_1454
.label_1452:
	test	r12, r12
	movzx	edx, al
	je	.label_1455
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_1455
.label_1454:
	mov	edx, dword ptr [rsp + 0x58]
.label_1455:
	cmp	r15d, 3
	je	.label_1457
	test	r15d, r15d
	jne	.label_1458
.label_1457:
	test	r12, r12
	movzx	eax, bl
	je	.label_1460
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1460
.label_1458:
	mov	eax, dword ptr [rsp + 0xa0]
.label_1460:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_977
	cmp	eax, -1
	je	.label_977
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_1462
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_977
.label_1462:
	test	r12, r12
	je	.label_1464
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_1466
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_1493:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_1464:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_1478:
	cmp	rdx, rcx
	ja	.label_1473
	cmp	rcx, rax
	ja	.label_1473
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_1473:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1478
	mov	dword ptr [r12], 0
	jmp	.label_1288
.label_1432:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1239
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1333
.label_1466:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_1491
	test	rbp, rbp
	je	.label_1491
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1493
.label_1424:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_1468
	cmp	ebp, 4
	jne	.label_1500
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
.label_3128:
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1288
	jmp	.label_938
.label_1500:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_939
	cmp	al, 2
	jne	.label_943
	jmp	.label_945
.label_939:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_954
	cmp	cl, 2
	je	.label_956
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_970
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_977
	cmp	r15d, 4
	je	.label_977
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_1182
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_977
.label_1182:
	cmp	r15d, 3
	jne	.label_995
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_977
.label_995:
	cmp	ebp, 3
	je	.label_1004
	test	ebp, ebp
	jne	.label_1266
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_1272
.label_954:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_943:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_1012
	jmp	qword ptr [(rax * 8) + label_1016]
.label_3174:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_1017
.label_1468:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1022
.label_1438:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1017:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_1288:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_1377
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_1036
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_1036:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1042
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_1042:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1050
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1050
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1050
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1050
	cmp	eax, 2
	jl	.label_1052
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1050
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1050
.label_1052:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1062
	mov	rax, qword ptr [rsi + 0x70]
.label_1374:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1064
.label_1050:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1071
	mov	rax, qword ptr [r9 + 0x70]
.label_1241:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_1078
	cmp	qword ptr [r14 + 8], 0
	jne	.label_1078
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_1078
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1091
.label_1078:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1413
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_1251:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1100
	mov	rax, qword ptr [r9 + 0x70]
.label_1264:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_1102:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_1567:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_1140
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_1140
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_1142
	mov	rsi, -1
	jmp	.label_1144
	nop	word ptr cs:[rax + rax]
.label_1142:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_1262:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_1273
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1525
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1579
.label_1600:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1556
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1586:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1586
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1586
	nop	word ptr cs:[rax + rax]
.label_1565:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1546
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1546
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1546:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1556
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1565
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1565
	jmp	.label_1586
	nop	word ptr cs:[rax + rax]
.label_1556:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1510
	mov	rax, qword ptr [rbp + 0x70]
.label_1583:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1515
	mov	qword ptr [r12], r14
.label_1515:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1528
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1530
.label_1209:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_1144:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_1199
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_1204
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_1206
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_1144
	cmp	eax, 1
	jne	.label_1144
	cmp	r13, -2
	je	.label_1144
	cmp	dl, 0x39
	ja	.label_1144
	cmp	r13, -1
	jne	.label_1209
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_1144
	nop	dword ptr [rax]
.label_1199:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_1206:
	cmp	r13, -1
	jne	.label_1215
	cmp	sil, 0x2c
	jne	.label_1217
	cmp	eax, 1
	mov	r13d, 0
	je	.label_1219
	jmp	.label_1217
	nop	word ptr [rax + rax]
.label_1215:
	cmp	r13, -2
	je	.label_1204
.label_1219:
	cmp	bl, 0x18
	je	.label_1224
	cmp	bl, 1
	jne	.label_1204
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_1204
	mov	rdx, -1
	jmp	.label_1230
.label_1224:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1232
.label_1253:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1230:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_1242
	cmp	al, 2
	je	.label_1204
	cmp	cl, 0x2c
	je	.label_1242
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_1230
	cmp	eax, 1
	jne	.label_1230
	cmp	r15, -2
	je	.label_1230
	cmp	cl, 0x39
	ja	.label_1230
	cmp	r15, -1
	jne	.label_1253
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1230
.label_1242:
	cmp	r15, -2
	je	.label_1204
.label_1232:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_1217
	cmp	eax, 0x18
	jne	.label_1217
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_1262
	mov	dword ptr [r12], 0xf
	jmp	.label_1086
	nop	dword ptr [rax]
.label_1217:
	mov	dword ptr [r12], 0xa
	jmp	.label_1086
.label_1204:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1270
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_1273
.label_1555:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1542
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1543
.label_1580:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1562
.label_1584:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1533
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1572
.label_1542:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1576
.label_1564:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1576:
	xor	r12d, r12d
.label_1562:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_1533
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1538
	nop	dword ptr [rax + rax]
.label_1530:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1555
	mov	rax, qword ptr [rbp + 0x70]
.label_1543:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_1594
	nop	dword ptr [rax + rax]
.label_1560:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_1594:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1531
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1536
	nop	dword ptr [rax]
.label_1531:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1550:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1544
	test	r12, r12
	jne	.label_1548
.label_1544:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1550
	jmp	.label_1554
.label_1548:
	lea	rbx, [r13 + 0x10]
.label_1536:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1566
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1560
.label_1566:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1564
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1560
.label_1554:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1580
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1538:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_1533
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1584
	mov	rax, qword ptr [rbp + 0x70]
.label_1572:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_1530
.label_1528:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1512
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1513
	mov	rax, qword ptr [rbp + 0x70]
.label_1595:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_1521
.label_1512:
	mov	r12, qword ptr [rsp + 0x48]
.label_1521:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1532
.label_1525:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1539:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1539
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1539
.label_1570:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1547
	cmp	eax, 6
	jne	.label_1537
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1563
.label_1547:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1563:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1537:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1273
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1570
	test	rax, rax
	mov	rbx, rdx
	je	.label_1570
	jmp	.label_1539
.label_1579:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1573
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1551
.label_1510:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1533
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1583
.label_1513:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_1273
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1595
.label_1270:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_1086
.label_1553:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1516
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1518
.label_1524:
	mov	r12, rbx
	jmp	.label_1526
.label_1516:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1527
.label_1540:
	mov	qword ptr [r15], 0
.label_1527:
	xor	r12d, r12d
.label_1526:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_1533
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1545
.label_1551:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1553
	mov	rax, qword ptr [rbp + 0x70]
.label_1518:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_1561
.label_1541:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1561:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1581
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1585
.label_1581:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1591:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1589
	test	r12, r12
	jne	.label_1558
.label_1589:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1591
	jmp	.label_1597
.label_1558:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1585:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1599
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1541
.label_1599:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1540
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1541
.label_1597:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1524
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1545:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1535
	mov	qword ptr [rbx], rdx
.label_1535:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1533
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1551
.label_1573:
	cmp	r11, r15
	jne	.label_1559
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_1273
.label_1559:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1552
	mov	rax, qword ptr [rbp + 0x70]
.label_1529:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_1568
.label_1519:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1568:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1587
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1590
.label_1587:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1598:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1593
	test	rbx, rbx
	jne	.label_1596
.label_1593:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1598
	jmp	.label_1600
.label_1596:
	lea	r15, [r14 + 0x10]
.label_1590:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1601
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1519
.label_1601:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1514
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1519
.label_1552:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1571
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1529
.label_1571:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1549
.label_1514:
	mov	qword ptr [r15], 0
.label_1549:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1533:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_1086:
	xor	ecx, ecx
.label_1273:
	test	rcx, rcx
	sete	al
	jne	.label_1557
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1532
	jmp	.label_1534
	nop	word ptr cs:[rax + rax]
.label_1557:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1532:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1567
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1569
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1567
.label_1569:
	test	al, al
	jne	.label_1360
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1574:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1574
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1574
	nop	word ptr cs:[rax + rax]
.label_1588:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1577
	cmp	eax, 6
	jne	.label_1578
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1582
	nop	dword ptr [rax]
.label_1577:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1582:
	call	free
.label_1578:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1360
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1588
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1588
	jmp	.label_1574
.label_1360:
	mov	dword ptr [r12], 0xd
.label_1345:
	xor	r15d, r15d
.label_1140:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1339:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1106
	mov	rax, qword ptr [rdi + 0x70]
.label_1326:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1349:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_1125
	mov	rax, qword ptr [rdi + 0x70]
.label_1286:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1284:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1136
	mov	rax, qword ptr [rdi + 0x70]
.label_1291:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_1139
	mov	qword ptr [r14], r15
.label_1139:
	test	rbp, rbp
	je	.label_1147
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_1465
	jmp	.label_1147
.label_1341:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1151
	mov	rax, qword ptr [rdi + 0x70]
.label_1335:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1465:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1140
.label_1193:
	mov	rbp, r14
	jmp	.label_1102
.label_1534:
	xor	r15d, r15d
	test	r9, r9
	je	.label_1140
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1522:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1522
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1522
.label_1520:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1592
	cmp	eax, 6
	jne	.label_1575
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1511
.label_1592:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1511:
	call	free
.label_1575:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_1140
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1520
	test	r9, r9
	mov	rbx, rax
	je	.label_1520
	jmp	.label_1522
.label_1091:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1102
.label_1243:
	mov	dword ptr [r12], eax
	jmp	.label_938
.label_1427:
	mov	dword ptr [r12], 7
	jmp	.label_938
.label_1367:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1196
.label_1392:
	mov	dword ptr [r12], 2
	jmp	.label_938
.label_1176:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1205
.label_1252:
	mov	dword ptr [r12], 6
	jmp	.label_1345
.label_1280:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1353
.label_1384:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1147
.label_1256:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1231
.label_1071:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1239
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1241
.label_1413:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1239
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1251
.label_1100:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1239
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1264
.label_1022:
	mov	dword ptr [r12], 3
	jmp	.label_938
.label_1310:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_1277
.label_1125:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1284
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1286
.label_1136:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1147
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1291
.label_945:
	mov	dword ptr [r12], 7
	jmp	.label_938
.label_1325:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_1311:
	mov	rsi, r14
	xor	eax, eax
.label_1309:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_1300
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1300:
	cmp	esi, 0x5f
	je	.label_1303
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1304
.label_1303:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1304:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1309
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_1311
	jmp	.label_1314
.label_1343:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_1317
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1319
.label_1106:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_1317
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1326
.label_1151:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1147
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1335
.label_1147:
	mov	dword ptr [r12], 0xc
	jmp	.label_1345
.label_956:
	mov	dword ptr [r12], 7
	jmp	.label_1348
.label_1317:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1349
.label_1302:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_1354
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_1357:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1357
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1357
.label_1368:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1358
	cmp	eax, 6
	jne	.label_1361
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1212
.label_1358:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1212:
	call	free
.label_1361:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1354
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1368
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1368
	jmp	.label_1357
.label_1354:
	mov	dword ptr [r12], 8
	jmp	.label_1345
.label_970:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_1348
.label_1440:
	mov	dword ptr [r12], 3
	jmp	.label_938
.label_1062:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1239
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1374
.label_1239:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1348
.label_1012:
	mov	edi, OFFSET FLAT:label_1379
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1381
	call	__assert_fail
.label_1491:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_977:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_1348:
	mov	r15, qword ptr [rsp + 0x30]
.label_938:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_1402
	.section	.text
	.align	32
	#Procedure 0x411c40

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1892
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1878
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1885
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1886
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1889:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1889
.label_1886:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1879
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1879:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1883
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1883:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1890
	mov	rax, qword ptr [r12 + 0x70]
.label_1884:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1876
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1887
	mov	rbp, qword ptr [r12 + 0x70]
.label_1881:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1893
	mov	rcx, qword ptr [r12 + 0x70]
.label_1891:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1877
.label_1876:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_1877:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1892:
	mov	dword ptr [r15], 0xc
	jmp	.label_1880
.label_1878:
	mov	rdi, rbx
	jmp	.label_1888
.label_1885:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1880
.label_1890:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1882
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1884
.label_1887:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1882
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1881
.label_1882:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1888:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1880:
	xor	eax, eax
	jmp	.label_1877
.label_1893:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1877
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1891
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412020

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1899
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1901
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1901
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1896
.label_1901:
	test	dl, 1
	je	.label_1898
	cmp	al, 0x5c
	jne	.label_1898
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1898
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1896
.label_1899:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1898:
	cmp	al, 0x5c
	jg	.label_1903
	cmp	al, 0x2d
	je	.label_1894
	cmp	al, 0x5b
	jne	.label_1896
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1897
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1895
	cmp	al, 0x3a
	je	.label_1900
	cmp	al, 0x2e
	jne	.label_1902
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1903:
	cmp	al, 0x5d
	je	.label_1904
	cmp	al, 0x5e
	jne	.label_1896
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1896:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1894:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1904:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1897:
	mov	byte ptr [rdi], 0
.label_1902:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1895:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1900:
	test	dl, 4
	je	.label_1902
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412110

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1905
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1905
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1908:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1906
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1908
.label_1906:
	cmp	edi, 2
	jl	.label_1905
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1909
.label_1905:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1072
	jmp	qword ptr [(rax * 8) + label_1907]
.label_3179:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_1076
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1823
	nop	word ptr cs:[rax + rax]
.label_1818:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1823:
	cmp	dil, 0x1e
	jne	.label_1822
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1834
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1803
	nop	dword ptr [rax]
.label_1822:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1825:
	mov	bl, byte ptr [rbx + rdx]
.label_1803:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1076
	cmp	bl, r11b
	jne	.label_1842
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1812
.label_1842:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1818
	jmp	.label_1076
.label_1834:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1806
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1835
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1810
.label_1835:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1810
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1804
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1804
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1814:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1804
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1814
.label_1804:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1803
.label_1806:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1825
.label_1810:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1803
.label_1812:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1841
	cmp	cl, 0x1c
	je	.label_1807
	cmp	cl, 0x1a
	jne	.label_1076
	mov	dword ptr [r14], 3
	jmp	.label_1076
.label_1841:
	mov	dword ptr [r14], 4
	jmp	.label_1076
.label_1807:
	mov	dword ptr [r14], 2
	jmp	.label_1076
.label_3178:
	test	r9b, r9b
	jne	.label_1072
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_1076
.label_1072:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1909:
	xor	eax, eax
.label_1076:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412370

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1975
	mov	esi, OFFSET FLAT:label_1935
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1987
	mov	esi, OFFSET FLAT:label_1913
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1975
.label_1987:
	mov	r12d, OFFSET FLAT:label_1971
.label_1975:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1984
.label_1950:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_979
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1983
	mov	esi, OFFSET FLAT:label_1995
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1911
	mov	esi, OFFSET FLAT:label_1913
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1916
	mov	esi, OFFSET FLAT:label_1165
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1921
	mov	esi, OFFSET FLAT:label_1971
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1925
	mov	esi, OFFSET FLAT:label_1926
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1929
	mov	esi, OFFSET FLAT:label_1931
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1934
	mov	esi, OFFSET FLAT:label_1935
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1937
	mov	esi, OFFSET FLAT:label_1940
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1942
	mov	esi, OFFSET FLAT:label_1944
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1945
	mov	esi, OFFSET FLAT:label_1947
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1949
	mov	esi, OFFSET FLAT:label_1951
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1910
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1979
	xor	ecx, ecx
.label_1962:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1958
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1958:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1962
	jmp	.label_1910
.label_1983:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1966
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1976:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1969
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1969:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1976
	jmp	.label_1910
.label_1911:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1968
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1988:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1980
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1980:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1988
	jmp	.label_1910
.label_1916:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1991
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1914:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1992
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1992:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1914
	jmp	.label_1910
.label_1921:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1920
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1932:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1924
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1924:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1932
	jmp	.label_1910
.label_1925:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1936
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1946:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1941
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1941:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1946
	jmp	.label_1910
.label_1929:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1952
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1917:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1955
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1955:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1917
	jmp	.label_1910
.label_1934:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1961
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1970:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1965
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1965:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1970
	jmp	.label_1910
.label_1937:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1973
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1982:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1977
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1977:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1982
	jmp	.label_1910
.label_1942:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1985
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1994:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1989
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1989:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1994
	jmp	.label_1910
.label_1945:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1912
	xor	ecx, ecx
.label_1923:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1915
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1915:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1923
	jmp	.label_1910
.label_1949:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1927
	xor	ecx, ecx
.label_1938:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1930
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1930:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1938
.label_1910:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1984:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1910
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1950
.label_1966:
	xor	esi, esi
.label_1957:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1954
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1954:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1957
	jmp	.label_1910
.label_1968:
	xor	esi, esi
.label_1964:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1960
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1960:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1964
	jmp	.label_1910
.label_1991:
	xor	esi, esi
.label_1972:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1967
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1967:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1972
	jmp	.label_1910
.label_1920:
	xor	esi, esi
.label_1978:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1974
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1974:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1978
	jmp	.label_1910
.label_1936:
	xor	esi, esi
.label_1986:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1981
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1981:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1986
	jmp	.label_1910
.label_1952:
	xor	esi, esi
.label_1993:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1990
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1990:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1993
	jmp	.label_1910
.label_1961:
	xor	esi, esi
.label_1918:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1919
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1919:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1918
	jmp	.label_1910
.label_1973:
	xor	esi, esi
.label_1928:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1922
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1922:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1928
	jmp	.label_1910
.label_1985:
	xor	esi, esi
.label_1939:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1933
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1933:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1939
	jmp	.label_1910
.label_1912:
	xor	esi, esi
.label_1948:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1943
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1943:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1948
	jmp	.label_1910
.label_1927:
	xor	esi, esi
.label_1956:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1953
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1953:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1956
	jmp	.label_1910
.label_1979:
	xor	esi, esi
.label_1963:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1959
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1959:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1963
	jmp	.label_1910
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b40

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1996
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_2002]
.label_3183:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1999
	mov	qword ptr [rax], r15
	jmp	.label_1811
.label_3184:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1998
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_2003
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1805
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_2000
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1811
.label_3181:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1805
	mov	edi, OFFSET FLAT:label_1827
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1820
	call	__assert_fail
.label_3182:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1811
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1809
	mov	qword ptr [rax], rbx
	jmp	.label_1811
.label_1996:
	test	dl, 8
	jne	.label_1813
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1811
.label_2000:
	mov	qword ptr [rax], 2
	jge	.label_1997
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1811
.label_1997:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1811:
	xor	eax, eax
.label_1805:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1999:
	lea	rax, [r14 + rbx*8]
.label_1831:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1805
.label_1809:
	lea	rax, [r14 + r15*8]
	jmp	.label_1831
.label_1998:
	mov	edi, OFFSET FLAT:label_2004
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1820
	call	__assert_fail
.label_2003:
	mov	edi, OFFSET FLAT:label_2001
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1820
	call	__assert_fail
.label_1813:
	mov	edi, OFFSET FLAT:label_1819
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1820
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d50

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_2012
	test	r12, r12
	je	.label_2012
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_2005
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_2005
.label_2012:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_2010
	mov	rax, qword ptr [rbx + 0x70]
.label_2008:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_2017
	mov	rax, qword ptr [rbx + 0x70]
.label_2018:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2016:
	test	r12, r12
	mov	rbp, r15
	je	.label_2011
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_2006
	mov	rax, qword ptr [rbx + 0x70]
.label_2015:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_2011
	mov	qword ptr [r15], rbp
.label_2011:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_2013
	mov	rax, qword ptr [rbx + 0x70]
.label_2014:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_2019
	mov	qword ptr [r13], r12
.label_2019:
	test	rbp, rbp
	je	.label_2007
	mov	qword ptr [rbp], r12
.label_2007:
	test	r15, r15
	je	.label_2009
	test	r13, r13
	je	.label_2009
	test	rbp, rbp
	je	.label_2009
	test	r12, r12
	je	.label_2009
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_2005:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2010:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_2017
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2008
.label_2017:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_2016
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2018
.label_2013:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_2007
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2014
.label_2009:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_2005
.label_2006:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_2011
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2015
	nop	
	.section	.text
	.align	32
	#Procedure 0x413040

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_2020
.label_2021:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_2025
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_2023
.label_2025:
	cmp	eax, 6
	sete	cl
.label_2023:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_2022:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2020:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_2022
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_2022
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2024
	test	rax, rax
	je	.label_2024
	test	r13, r13
	je	.label_2024
	test	rbp, rbp
	je	.label_2024
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_2021
.label_2024:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_2022
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413210

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2027
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_2034
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_2034
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_2034
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_2027
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_2034:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_2031
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_2031
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2029:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_2028
	test	rcx, rcx
	jne	.label_2033
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_2036
	jmp	.label_2027
	nop	word ptr [rax + rax]
.label_2033:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_2036:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2027
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_2035
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_2028:
	mov	r15b, 1
.label_2035:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_2029
	jmp	.label_2032
.label_2031:
	xor	r15d, r15d
.label_2032:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_2027
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_2026
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_2026
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_2030
.label_2026:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_2030:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_2027:
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
	.align	32
	#Procedure 0x413420

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_2044:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_2042:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_2049
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_2039
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_2042
	jmp	.label_2039
	nop	dword ptr [rax + rax]
.label_2049:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2045
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_2047
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_2041
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_2041
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_2048:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_2038
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_2046
.label_2038:
	dec	rsi
	test	rsi, rsi
	jle	.label_2041
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_2048
	jmp	.label_2041
.label_2046:
	cmp	rsi, -1
	je	.label_2041
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_2043
	jmp	.label_2039
	nop	dword ptr [rax]
.label_2041:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_2039
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_2039
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_2039
.label_2043:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_2039
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_2042
	jmp	.label_2039
	nop	
.label_2047:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_2037
	cmp	rbp, r15
	jne	.label_2040
.label_2037:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_2039
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_2044
	jmp	.label_2039
.label_2045:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_2050:
	mov	dword ptr [rsp + 8], 0
.label_2039:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2040:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_2050
	jmp	.label_2039
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413890

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_2055
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_2055
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_2062
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2056
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_2062:
	test	rcx, rcx
	je	.label_2057
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_2051
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_2052
.label_2060:
	dec	rax
.label_2063:
	dec	rcx
	jmp	.label_2059
	nop	word ptr [rax + rax]
.label_2052:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_2060
	jge	.label_2063
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_2059:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_2052
.label_2051:
	test	rax, rax
	js	.label_2054
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_2054:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_2055
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_2058:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_2064:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_2061
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_2064
	jmp	.label_2055
	nop	word ptr cs:[rax + rax]
.label_2061:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_2058
	lea	rsi, [rdi + r12*8]
.label_2053:
	call	memcpy
.label_2055:
	xor	eax, eax
.label_2056:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2057:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_2053
	nop	
	.section	.text
	.align	32
	#Procedure 0x413a20

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_2072
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_2075
	cmp	rsi, rcx
	jne	.label_2077
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_2068
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_2070
.label_2072:
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2078
	mov	qword ptr [rax], rbx
	jmp	.label_2066
.label_2075:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_2067
.label_2077:
	mov	rax, qword ptr [r14 + 0x10]
.label_2070:
	cmp	qword ptr [rax], rbx
	jle	.label_2069
	test	rcx, rcx
	jle	.label_2065
	nop	word ptr cs:[rax + rax]
.label_2074:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_2074
	jmp	.label_2065
.label_2069:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_2071
	nop	dword ptr [rax]
.label_2073:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_2071:
	cmp	rdx, rbx
	jg	.label_2073
.label_2065:
	mov	qword ptr [rax + rcx*8], rbx
.label_2067:
	inc	qword ptr [r14 + 8]
.label_2066:
	mov	al, 1
.label_2076:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_2078:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_2068:
	xor	eax, eax
	jmp	.label_2076
	nop	
	.section	.text
	.align	32
	#Procedure 0x413b00

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2123
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_2092
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_2125
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_2135
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2137
	pxor	xmm1, xmm1
	jmp	.label_2140
.label_2123:
	mov	dword ptr [r12], 0
.label_2108:
	xor	r13d, r13d
	jmp	.label_2143
.label_2135:
	xor	r9d, r9d
	jmp	.label_2125
.label_2137:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2154:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2154
.label_2140:
	test	rsi, rsi
	je	.label_2156
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2083:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2083
.label_2156:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_2092
.label_2125:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_2114:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_2114
.label_2092:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_2091
	test	rdx, rdx
	je	.label_2120
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_2122:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_2102
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_2102
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_2102
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2102
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_2117:
	test	rax, rax
	jle	.label_2143
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2117
	nop	word ptr cs:[rax + rax]
.label_2102:
	inc	rsi
	cmp	rsi, r9
	jl	.label_2122
	jmp	.label_2091
.label_2120:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_2134
	mov	rsi, rax
	sub	rsi, r9
.label_2127:
	add	rsi, 8
	jne	.label_2127
.label_2134:
	test	rax, rax
	je	.label_2091
	neg	rax
	nop	
.label_2128:
	inc	rax
	jne	.label_2128
.label_2091:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2110
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_2089
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2144
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_2147
.label_2089:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_2147:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2118
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_2160
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_2081
	nop	word ptr cs:[rax + rax]
.label_2146:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2087
	test	ecx, ecx
	je	.label_2096
.label_2087:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2139
	cmp	dl, 4
	jne	.label_2103
	or	bl, 0x40
	jmp	.label_2100
.label_2139:
	or	bl, 0x10
.label_2100:
	mov	byte ptr [r13 + 0x68], bl
.label_2103:
	test	ecx, ecx
	je	.label_2107
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2109
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2093
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2112
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2099
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2121
.label_2107:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2096
.label_2112:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2121:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2109:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_2129
	test	r9d, r9d
	jne	.label_2096
	and	r12d, 0x40
	je	.label_2096
.label_2129:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2132
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2132
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2132
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2142:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2142
	nop	word ptr [rax + rax]
.label_2132:
	inc	r8
.label_2096:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2146
	jmp	.label_2118
	nop	word ptr cs:[rax + rax]
.label_2081:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2088
	test	ecx, ecx
	je	.label_2106
.label_2088:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2159
	cmp	dl, 4
	jne	.label_2090
	or	bl, 0x40
	jmp	.label_2082
.label_2159:
	or	bl, 0x10
.label_2082:
	mov	byte ptr [r13 + 0x68], bl
.label_2090:
	test	ecx, ecx
	je	.label_2084
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2085
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2093
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2094
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2099
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2105
.label_2084:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2106
.label_2094:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2105:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2085:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_2113
	test	r9d, r9d
	jne	.label_2106
	and	r12d, 0x40
	je	.label_2106
.label_2113:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2116
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2116
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2116
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2079:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2079
	nop	word ptr [rax + rax]
.label_2116:
	inc	r8
.label_2106:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2081
	jmp	.label_2118
.label_2160:
	test	eax, eax
	jne	.label_2131
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_2115:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2138
	test	ecx, ecx
	je	.label_2098
.label_2138:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2145
	cmp	dl, 4
	jne	.label_2149
	or	bl, 0x40
	jmp	.label_2151
.label_2145:
	or	bl, 0x10
.label_2151:
	mov	byte ptr [r13 + 0x68], bl
.label_2149:
	test	ecx, ecx
	je	.label_2152
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2153
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2093
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2158
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2099
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2086
.label_2152:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2098
.label_2158:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2086:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2153:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_2097
	test	r9d, r9d
	jne	.label_2098
	and	r12d, 0x40
	je	.label_2098
.label_2097:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2101
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2101
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2101
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2111:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2111
	nop	word ptr [rax + rax]
.label_2101:
	inc	r8
.label_2098:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2115
	jmp	.label_2118
.label_2131:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_2095:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2119
	test	ecx, ecx
	je	.label_2124
.label_2119:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_2126
	cmp	dl, 2
	jne	.label_2130
	or	al, 0x10
	jmp	.label_2133
.label_2126:
	or	al, 0x40
.label_2133:
	mov	byte ptr [r13 + 0x68], al
.label_2130:
	test	ecx, ecx
	je	.label_2136
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2148
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2093
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2141
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2099
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2150
.label_2136:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2124
.label_2141:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2150:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2148:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_2157
	test	r9d, r9d
	jne	.label_2124
	and	ebp, 0x40
	je	.label_2124
.label_2157:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_2080
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_2080
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_2080
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_2155:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_2155
	nop	word ptr [rax + rax]
.label_2080:
	inc	r8
.label_2124:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_2095
.label_2118:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2093
.label_2143:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2093:
	mov	rdi, r13
	call	free_state
	jmp	.label_2104
.label_2099:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_2104:
	mov	r12, qword ptr [rsp + 0x20]
.label_2110:
	mov	dword ptr [r12], 0xc
	jmp	.label_2108
.label_2144:
	mov	rdi, r13
	call	free
	jmp	.label_2110
	.section	.text
	.align	32
	#Procedure 0x4144a0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2161
	test	r13, r13
	jle	.label_2162
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2165:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2164
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_2163
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2166
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_2163:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2164:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2165
.label_2162:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_2167
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2168:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_2161:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2166:
	mov	ecx, 0xc
	jmp	.label_2161
.label_2167:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2161
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_2168
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145e0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_2226
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2173
	mov	qword ptr [rbx + 0x20], 0
.label_2173:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_2179
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_2179:
	test	r14, r14
	je	.label_2205
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_2211
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2206
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2212
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2212:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2198
.label_2197:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2171:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2205
	add	qword ptr [rbx + 8], r14
.label_2205:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2225
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2231
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2174
	jmp	.label_2175
.label_2225:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2177
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_2175
.label_2231:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2175:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2174:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2226:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_2179
.label_2211:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_2193
.label_2186:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_2199
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2207
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_2219:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_2207
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_2219
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_2221
.label_2195:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2169
	cmp	rax, -3
	ja	.label_2169
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_2169:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_2183
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_2207:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_2189
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_2223
.label_2206:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_2210:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2200
	jge	.label_2209
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_2200:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_2210
.label_2209:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_2192
	cmp	rbp, r14
	jne	.label_2192
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_2192
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_2171
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_2188:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2188
	jmp	.label_2171
.label_2198:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_2197
.label_2192:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2196:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2180
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_2196
.label_2180:
	cmp	rax, rdi
	jge	.label_2201
	mov	rcx, qword ptr [rbx + 0x10]
.label_2215:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2201
	inc	rax
	cmp	rax, rdi
	jl	.label_2215
.label_2201:
	cmp	rax, rdi
	jne	.label_2217
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2171
.label_2177:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2222
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_2224
	jmp	.label_2228
.label_2182:
	mov	r12, qword ptr [r13]
.label_2224:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2230
.label_2187:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2176
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2176:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_2182
	jmp	.label_2185
.label_2230:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_2187
.label_2199:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2190
	mov	cl, byte ptr [rsi + rdx]
.label_2190:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_2194
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_2194
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_2194:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_2171
.label_2217:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_2213
	jle	.label_2218
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2218:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_2213:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2171
.label_2189:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2208
.label_2222:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2175
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_2170
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2178
.label_2191:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_2178:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_2191
	mov	rax, rcx
.label_2170:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2175
.label_2185:
	mov	r15, r14
.label_2228:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2175
.label_2220:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_2202
	test	rax, rax
	je	.label_2202
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_2202:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2203
.label_2223:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_2220
	mov	edx, dword ptr [rsp + 8]
.label_2203:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_2223
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_2208
.label_2183:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2227
.label_2216:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_2214
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2214:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2172
.label_2208:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2172:
	test	rbp, rbp
	jne	.label_2181
.label_2204:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2171
.label_2193:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2186
.label_2181:
	jle	.label_2184
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2184:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_2204
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_2204
.label_2227:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_2214
	test	eax, eax
	je	.label_2216
	jmp	.label_2214
.label_2221:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2195
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_2229:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2229
	jmp	.label_2195
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414d20

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_2235
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_2236
	test	ecx, ecx
	jne	.label_2238
	nop	word ptr cs:[rax + rax]
.label_2233:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_2232
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2235
	test	sil, 0x24
	jne	.label_2232
	test	eax, eax
	jne	.label_2235
	test	sil, sil
	jns	.label_2235
	nop	word ptr [rax + rax]
.label_2232:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_2233
	jmp	.label_2235
	nop	word ptr cs:[rax + rax]
.label_2238:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_2234
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2235
	test	sil, 4
	jne	.label_2234
	test	eax, eax
	jne	.label_2235
	test	sil, sil
	jns	.label_2235
.label_2234:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_2238
	jmp	.label_2235
.label_2236:
	test	ecx, ecx
	jne	.label_2240
.label_2241:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_2239
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2235
	test	sil, 0x28
	jne	.label_2239
	test	eax, eax
	jne	.label_2235
	test	sil, sil
	jns	.label_2235
	nop	
.label_2239:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_2241
	jmp	.label_2235
	nop	
.label_2240:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_2237
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2235
	test	sil, 8
	jne	.label_2237
	test	eax, eax
	jne	.label_2235
	test	sil, sil
	jns	.label_2235
.label_2237:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_2240
.label_2235:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ec0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2242
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2245:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2243
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2246:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2246
.label_2243:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2244
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2244:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2245
.label_2242:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414f80

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_2288]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_2289]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_2290
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2257
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_2290:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_2314
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_2254
.label_2314:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2248
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_2254:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_2264
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_2268
.label_2248:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_2257
	cmp	qword ptr [r13], 0
	jle	.label_2304
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2281:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2281
.label_2304:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_2257
.label_2282:
	mov	r12, rax
	jmp	.label_2270
	nop	word ptr cs:[rax + rax]
.label_2268:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_2287
	cmp	cl, 8
	jne	.label_2293
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2293
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_2293
	nop	dword ptr [rax]
.label_2287:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2293
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_2256
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_2299
.label_2256:
	test	ecx, 0x80000
	je	.label_2301
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_2301
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_2299:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_2293
.label_2301:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_2293:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_2308
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_2308
	test	r13, r13
	je	.label_2310
	test	rbx, rbx
	mov	eax, 0
	je	.label_2312
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2317:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2316
	cmp	qword ptr [rcx], -1
	je	.label_2312
.label_2316:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2317
.label_2312:
	cmp	rax, rbx
	je	.label_2249
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_2251
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_2308:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_2271
	test	ecx, 0x100000
	jne	.label_2275
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_2261
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_2258
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_2247
	cmp	rdi, -1
	je	.label_2247
	test	rdx, rdx
	je	.label_2285
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_2247
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_2247
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_2295
	nop	word ptr [rax + rax]
.label_2271:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_2276
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_2266
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_2266
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_2307
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_2250:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_2311:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_2311
	cmp	rax, -1
	je	.label_2315
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_2315
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_2269
.label_2315:
	inc	r14
	cmp	r14, r10
	jl	.label_2250
	mov	r12, r11
	jmp	.label_2252
	nop	dword ptr [rax + rax]
.label_2275:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_2255:
	test	rdx, rdx
	jne	.label_2260
	jmp	.label_2261
.label_2307:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_2272:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_2265
	cmp	r12, -1
	mov	rax, rbx
	je	.label_2267
	jmp	.label_2269
	nop	word ptr cs:[rax + rax]
.label_2265:
	mov	rax, r12
.label_2267:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_2272
	mov	r12, rax
	jmp	.label_2252
.label_2269:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_2274
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_2313
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2278:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2278
.label_2313:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2282
	test	r13, r13
	jne	.label_2286
	mov	r12, rax
	jmp	.label_2270
.label_2258:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_2285
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_2292
.label_2285:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_2276
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2261
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_2298
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2309:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2309
.label_2298:
	cmp	rcx, -1
	je	.label_2255
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_2297
	jmp	.label_2255
	nop	word ptr cs:[rax + rax]
.label_2261:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_2266
.label_2260:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_2292
.label_2295:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_2247
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_2247
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2247
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2284
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2303:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_2303
.label_2284:
	cmp	rbx, -1
	je	.label_2266
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_2266
.label_2292:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_2270
.label_2274:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_2270
.label_2286:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_2273
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_2276
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_2279
.label_2273:
	mov	r15, qword ptr [r13 + 0x10]
.label_2279:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_2276
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_2291
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_2296
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2297
.label_2291:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2297:
	mov	r15, qword ptr [rbp - 0x40]
.label_2252:
	mov	r8, qword ptr [rbp - 0x30]
.label_2270:
	test	r12, r12
	jns	.label_2300
	cmp	r12, -2
	je	.label_2276
	nop	dword ptr [rax]
.label_2266:
	test	r13, r13
	je	.label_2302
.label_2247:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_2251
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_2300:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_2268
	mov	rdi, qword ptr [rbp - 0x60]
.label_2264:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2253
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2253:
	xor	ecx, ecx
	test	r13, r13
	je	.label_2257
	cmp	qword ptr [r13], 0
	jle	.label_2259
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2263:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2263
.label_2259:
	mov	rdi, qword ptr [r13 + 0x10]
.label_2277:
	call	free
	xor	ecx, ecx
.label_2257:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2302:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2257
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_2257
.label_2310:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2257
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_2277
.label_2249:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2280
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2280:
	cmp	qword ptr [r13], 0
	jle	.label_2259
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2262:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_2262
	jmp	.label_2259
.label_2296:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_2276:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2294
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2294:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_2257
	cmp	qword ptr [r13], 0
	jle	.label_2304
	xor	ebx, ebx
	xor	r15d, r15d
.label_2283:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2283
	jmp	.label_2304
.label_2251:
	mov	edi, OFFSET FLAT:label_2305
	mov	esi, OFFSET FLAT:label_1093
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_2306
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4159b0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2323
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2326
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2322
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2324:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2318
	dec	rsi
	test	rsi, rsi
	jg	.label_2324
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2319
.label_2322:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2319
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2325
	jmp	.label_2319
.label_2318:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2320
.label_2321:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2319
.label_2325:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2319:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2323:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2319
.label_2326:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2319
.label_2320:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2319
	test	eax, eax
	je	.label_2321
	jmp	.label_2319
	nop	
	.section	.text
	.align	32
	#Procedure 0x415a70

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_2330
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2328
.label_2331:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2330
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2329
	nop	word ptr [rax + rax]
.label_2328:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_2327
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2327
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2327
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2331
.label_2329:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_2330
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_2327:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2328
.label_2330:
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
	#Procedure 0x415ba0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2365
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_2396:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_2342
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2338
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2350
	test	ecx, ecx
	je	.label_2342
.label_2350:
	test	bh, 8
	je	.label_2360
	test	ecx, ecx
	jne	.label_2342
.label_2360:
	test	bh, 0x20
	je	.label_2363
	mov	ecx, eax
	and	ecx, 2
	je	.label_2342
.label_2363:
	test	bpl, bpl
	jns	.label_2338
	and	eax, 8
	je	.label_2342
	nop	word ptr [rax + rax]
.label_2338:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_2376
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_2388:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_2388
.label_2376:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_2380
	cmp	rax, -1
	je	.label_2380
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_2380
	lea	rax, [rcx + rax*8]
	nop	
.label_2339:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_2332
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2339
.label_2380:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_2332
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_2349
	nop	word ptr cs:[rax + rax]
.label_2403:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_2349:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_2370
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_2378
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_2361
.label_2378:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2392
.label_2386:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_2368
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_2391
	and	r9b, sil
	je	.label_2399
.label_2391:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_2399
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2368
.label_2344:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2345
.label_2399:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_2356
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_2356:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_2373
	nop	word ptr cs:[rax + rax]
.label_2361:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_2379
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_2386
	mov	r12, rbp
.label_2373:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_2368
.label_2379:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_2335
	test	eax, eax
	jne	.label_2344
	xor	r10d, r10d
.label_2335:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_2345:
	mov	r9, qword ptr [rsp + 0x10]
.label_2368:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2355
	cmp	al, 9
	jne	.label_2358
.label_2355:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_2361
	jmp	.label_2392
.label_2358:
	cmp	al, 7
	jne	.label_2366
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_2392:
	cmp	r14, rax
	jge	.label_2371
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2370
	nop	word ptr cs:[rax + rax]
.label_2371:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_2333
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2370
.label_2333:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2362
.label_2382:
	cmp	r13, -1
	je	.label_2367
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_2389
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_2377
.label_2389:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_2346
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_2336
.label_2346:
	test	eax, eax
	mov	r8, rbp
	jne	.label_2352
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_2359
.label_2353:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_2369
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_2385
	mov	r10d, 0xc
	jmp	.label_2397
.label_2385:
	test	eax, eax
	jne	.label_2372
	xor	r10d, r10d
.label_2397:
	mov	rcx, r15
.label_2357:
	mov	r15, qword ptr [rsp + 8]
.label_2381:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_2336
.label_2377:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_2336
.label_2374:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_2336
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_2343
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2395
.label_2352:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_2357
.label_2359:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_2383
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2353
.label_2369:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2381
.label_2372:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_2336
.label_2343:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2336
.label_2383:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_2336
	nop	word ptr [rax + rax]
.label_2362:
	cmp	rbx, qword ptr [r9]
	jle	.label_2347
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_2374
	lea	r15, [rcx + 1]
.label_2395:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_2354
	jmp	.label_2367
	nop	word ptr cs:[rax + rax]
.label_2347:
	mov	r15, rcx
.label_2354:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_2367
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2367
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_2384:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_2398
	cmp	qword ptr [rdx + rbp], r14
	je	.label_2382
.label_2398:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2384
.label_2367:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_2336:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2387
	cmp	al, 0xc
	jne	.label_2393
.label_2387:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_2362
	jmp	.label_2370
.label_2366:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2394
.label_2393:
	cmp	al, 0xa
	je	.label_2370
.label_2394:
	cmp	r10d, 6
	je	.label_2370
	test	r10d, r10d
	jne	.label_2351
	nop	word ptr cs:[rax + rax]
.label_2370:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_2403
.label_2332:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_2401:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_2342
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_2340:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2348
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_2348
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_2402
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2375
.label_2402:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_2375:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2390
	mov	rdx, qword ptr [rcx + 0x10]
.label_2390:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_2400
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2337
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_2364
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_2364
	jmp	.label_2334
.label_2400:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2364
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_2341
	jmp	.label_2334
.label_2364:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2341:
	cmp	rsi, rdx
	jne	.label_2348
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2348
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2334
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2334
	nop	
.label_2348:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_2340
	nop	word ptr cs:[rax + rax]
.label_2342:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_2396
	jmp	.label_2365
.label_2351:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_2401
	jmp	.label_2334
.label_2365:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_2334:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2337:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_2334
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165a0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_2409
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_2407
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2409
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_2409
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_2407
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2409
	mov	qword ptr [r15 + 0x18], rax
.label_2407:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_2413
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2409
	mov	qword ptr [r15 + 8], rax
.label_2413:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_2416
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_2409
	mov	qword ptr [r15 + 0xb8], rax
.label_2416:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_2404
	cmp	eax, 2
	jl	.label_2408
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_2411
	jmp	.label_2409
.label_2404:
	cmp	eax, 2
	jl	.label_2412
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_2411
.label_2408:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_2410
	jmp	.label_2418
.label_2412:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_2411
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2414
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2406
	nop	dword ptr [rax]
.label_2415:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2406:
	inc	rax
	cmp	rax, rcx
	jl	.label_2415
	mov	rax, rcx
.label_2414:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_2411
.label_2419:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_2417
	nop	word ptr cs:[rax + rax]
.label_2410:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2419
.label_2417:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2405
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2405:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_2410
	mov	rbp, r14
.label_2418:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_2411:
	xor	r14d, r14d
.label_2409:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4167d0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2422
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2420
.label_2422:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2424
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2423
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2426
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2427
.label_2424:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2420
.label_2423:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2427:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_2420
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2420:
	test	rbx, rbx
	je	.label_2425
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2425
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2421
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2421
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2421
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2421
.label_2425:
	mov	rax, rbx
.label_2421:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2426:
	xor	eax, eax
	jmp	.label_2421
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416920

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_2437
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_2432
	test	r13, r13
	jle	.label_2432
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2432
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2435
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_2434:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_2439:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_2428
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_2438
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2439
	jmp	.label_2428
.label_2438:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2434
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_2428:
	sub	r13, rbp
	jle	.label_2430
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_2433
.label_2432:
	test	r13, r13
	jle	.label_2437
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2429
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2431
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2436
.label_2437:
	test	rbx, rbx
	je	.label_2429
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2429
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_2429
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2431
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2436
.label_2429:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2436
.label_2430:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_2433
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_2433:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_2436:
	xor	ecx, ecx
.label_2435:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2431:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2435
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416b30

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2440
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2441:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_2441
.label_2440:
	cmp	rax, r8
	jge	.label_2443
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2442
.label_2443:
	mov	rax, -1
.label_2442:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ba0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2448
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2451
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2449
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2451:
	test	r15, r15
	jle	.label_2452
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2446
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2446
.label_2452:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2446:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2447
	mov	dword ptr [r13 + 0xe0], edi
.label_2447:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2450
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2444
.label_2450:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2445
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2445
.label_2444:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2448
.label_2445:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2448
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2448:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2449:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2448
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416d80

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_2473
	mov	r14, qword ptr [rbp + 0x10]
.label_2456:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_2460
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2463
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2476
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2479
.label_2460:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_2477
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_2483
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_2485
.label_2477:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_2480
.label_2483:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_2457
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_2463
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2471
.label_2457:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_2485:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2471:
	test	al, 0x40
	je	.label_2480
.label_2479:
	test	rbp, rbp
	je	.label_2481
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2476
.label_2481:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2488
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2453
.label_2488:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_2480:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_2458
	xor	esi, esi
	nop	
.label_2472:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_2462
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2465
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2453
.label_2465:
	test	rdx, rdx
	je	.label_2474
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_2466
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_2489:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2484
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2454
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_2455
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_2467
.label_2455:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_2470
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_2475
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_2475
	jmp	.label_2467
	nop	
.label_2454:
	test	eax, eax
	jne	.label_2475
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_2484:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2487
.label_2475:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_2470
.label_2487:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_2489
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_2466:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2474:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_2464
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2453
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2453
.label_2464:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2478
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2453
.label_2478:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_2472
	jmp	.label_2486
.label_2458:
	mov	rbp, rax
	jmp	.label_2486
.label_2462:
	mov	rbp, qword ptr [rsp + 8]
.label_2486:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_2459
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_2459
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_2468
	xor	edx, edx
.label_2469:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2469
.label_2468:
	cmp	rdx, -1
	je	.label_2459
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_2461
.label_2459:
	mov	ebp, 1
.label_2461:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2470:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_2482
.label_2467:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2482:
	mov	dword ptr [rsp + 4], r12d
.label_2453:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_2461
.label_2473:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_2461
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2461
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_2461
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2456
.label_2476:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2461
.label_2463:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_2461
	nop	
	.section	.text
	.align	32
	#Procedure 0x417490

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2491
	test	r12, r12
	jle	.label_2498
	xor	r12d, r12d
	jmp	.label_2492
	nop	dword ptr [rax]
.label_2495:
	cmp	rbp, -1
	je	.label_2493
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2496
	nop	dword ptr [rax]
.label_2492:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2493
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2497:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2490
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2495
.label_2490:
	inc	rax
	cmp	rax, r10
	jl	.label_2497
.label_2493:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2496:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_2494
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2492
.label_2498:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2491:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2494:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2491
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4175c0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_2518
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2499:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_2499
.label_2518:
	cmp	r11, r9
	jge	.label_2512
	cmp	r11, -1
	je	.label_2512
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2512
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2525
.label_2517:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2525:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2523:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2506
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2508
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2502:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2502
.label_2508:
	cmp	rax, -1
	je	.label_2506
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2506
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2528
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2500
	xor	edx, edx
.label_2510:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2510
.label_2500:
	cmp	rdx, -1
	je	.label_2516
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2519
.label_2516:
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2527
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2526:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_2519
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2519
.label_2528:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2530
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2505
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2507
	xor	edx, edx
	nop	
.label_2513:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2513
.label_2507:
	cmp	rdx, -1
	je	.label_2522
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2519
.label_2522:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2511
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2501
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2509
.label_2530:
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2514
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2520
.label_2505:
	mov	qword ptr [rsp + 0x18], r8
.label_2511:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2509:
	xor	ebx, ebx
.label_2524:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2529
	xor	al, 1
	jne	.label_2529
.label_2520:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2515
	mov	eax, dword ptr [rsp + 0xc]
.label_2515:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2503
.label_2527:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2526
.label_2529:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2504
.label_2514:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2504:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2519:
	mov	r14, qword ptr [rsp + 0x28]
.label_2503:
	test	ecx, ecx
	je	.label_2506
	cmp	ecx, 4
	jne	.label_2521
.label_2506:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2523
	jmp	.label_2512
.label_2501:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2524
.label_2521:
	cmp	ecx, 2
	je	.label_2517
	mov	eax, dword ptr [rsp + 0xc]
.label_2512:
	add	rsp, 0x58
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
	#Procedure 0x417a20

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2538
	nop	dword ptr [rax]
.label_2534:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2538:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2532
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2535
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2539:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2539
.label_2535:
	cmp	rdx, -1
	je	.label_2532
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2536
.label_2532:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2537
	cmp	qword ptr [rax + rcx], r14
	je	.label_2540
.label_2537:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2531
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2533
	test	rcx, rcx
	jne	.label_2534
	jmp	.label_2536
	nop	dword ptr [rax]
.label_2533:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2531
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2534
.label_2540:
	cmp	r15d, 9
	jne	.label_2536
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2531
.label_2536:
	xor	eax, eax
.label_2531:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417b40

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2558
	mov	r15, r8
	jle	.label_2563
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2568
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2568
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2547
	pxor	xmm1, xmm1
	jmp	.label_2552
.label_2547:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2564:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2564
.label_2552:
	test	rax, rax
	je	.label_2571
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_2566:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_2566
.label_2571:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2563
.label_2568:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_2541:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2541
.label_2563:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2544
	test	r12, r12
	je	.label_2551
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2546:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2561
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2561
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_2567:
	test	rdi, rdi
	jle	.label_2554
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2567
	nop	word ptr cs:[rax + rax]
.label_2561:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2546
	jmp	.label_2544
.label_2551:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_2549
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_2553:
	add	rdx, 8
	jne	.label_2553
.label_2549:
	test	rax, rax
	je	.label_2544
	neg	rax
	nop	
.label_2542:
	inc	rax
	jne	.label_2542
.label_2544:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2550
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_2565
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2569
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_2555
.label_2565:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_2560
	lea	r14, [r12 + 0x10]
.label_2555:
	xor	eax, eax
	nop	
.label_2559:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2548
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_2562
	cmp	cl, 4
	je	.label_2556
	cmp	cl, 2
	jne	.label_2557
	or	bl, 0x10
	jmp	.label_2545
.label_2556:
	or	bl, 0x40
	jmp	.label_2545
.label_2557:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2548
.label_2562:
	or	bl, 0x80
.label_2545:
	mov	byte ptr [r13 + 0x68], bl
.label_2548:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2559
.label_2560:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2570
.label_2554:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2558:
	mov	dword ptr [r14], 0
	jmp	.label_2543
.label_2570:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2550
.label_2569:
	mov	rdi, r13
	call	free
.label_2550:
	mov	dword ptr [r14], 0xc
.label_2543:
	xor	r13d, r13d
	jmp	.label_2554
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ec0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2592
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2579
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2579
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2577:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2579
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2577
.label_2579:
	cmp	r10d, 5
	jne	.label_2585
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2573
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2588
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2573
.label_2588:
	test	al, al
	jns	.label_2593
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2573
.label_2593:
	mov	r14d, ebx
	jmp	.label_2573
.label_2585:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2573
	test	al, al
	je	.label_2573
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2575
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2575
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2582
.label_2575:
	cmp	r8d, 1
	jne	.label_2584
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2582
.label_2584:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2582:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2590
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2595:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2572
	inc	rdx
	cmp	rdx, rax
	jl	.label_2595
.label_2590:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2578
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2576:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2572
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2576
	mov	rsi, qword ptr [r15 + 0x40]
.label_2578:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2580
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2586:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2583
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2572
.label_2583:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2586
	jmp	.label_2580
.label_2572:
	mov	ecx, ebx
.label_2580:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2591
	mov	r14d, ecx
	jmp	.label_2573
.label_2591:
	test	ecx, ecx
	jg	.label_2573
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2573:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2592:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2573
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2573
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2574
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2573
.label_2574:
	cmp	bl, 0xef
	ja	.label_2596
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2581
	cmp	dil, 0xa0
	jb	.label_2573
	jmp	.label_2581
.label_2596:
	cmp	bl, 0xf7
	ja	.label_2589
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2581
	cmp	dil, 0x90
	jb	.label_2573
	jmp	.label_2581
.label_2589:
	cmp	bl, 0xfb
	ja	.label_2594
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2581
	cmp	dil, 0x88
	jb	.label_2573
	jmp	.label_2581
.label_2594:
	cmp	bl, 0xfd
	ja	.label_2573
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2581
	cmp	dil, 0x84
	jb	.label_2573
.label_2581:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2573
	add	rax, rcx
	mov	ecx, 1
.label_2587:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2573
	cmp	dl, 0xbf
	ja	.label_2573
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2587
	mov	r14d, esi
	jmp	.label_2573
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418150

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2597
	jmp	qword ptr [(rbp * 8) + label_2605]
.label_3212:
	cmp	byte ptr [rsi], cl
	je	.label_2599
	xor	eax, eax
	jmp	.label_2597
.label_3213:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2599
	xor	eax, eax
	jmp	.label_2597
.label_3215:
	test	cl, cl
	js	.label_2604
.label_3214:
	test	cl, cl
	je	.label_2603
	cmp	cl, 0xa
	jne	.label_2599
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2599
	xor	eax, eax
	jmp	.label_2597
.label_2603:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2602
.label_2599:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2597
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2598
	test	ecx, ecx
	jne	.label_2598
	xor	eax, eax
	jmp	.label_2597
.label_2598:
	mov	edx, r14d
	test	dh, 8
	je	.label_2600
	test	ecx, ecx
	je	.label_2600
.label_2604:
	xor	eax, eax
	jmp	.label_2597
.label_2600:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2601
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2601
.label_2602:
	xor	eax, eax
	jmp	.label_2597
.label_2601:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2597:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418240

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2639
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2645
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_2668:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_2669
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_2659
	nop	
.label_2669:
	cmp	dl, 7
	je	.label_2684
	cmp	dl, 5
	je	.label_2686
	cmp	dl, 3
	jne	.label_2609
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2659
.label_2684:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_2699
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_2699:
	test	cl, cl
	jns	.label_2659
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_2659
.label_2686:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_2711
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_2715
.label_2711:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_2715:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_2727
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_2727:
	test	bl, bl
	jns	.label_2659
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_2659:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_2691
	test	dl, 0x20
	je	.label_2606
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_2609
	mov	qword ptr [rbp - 0x60], 0x400
.label_2606:
	test	dl, dl
	js	.label_2619
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_2692
	cmp	eax, 1
	jne	.label_2627
	test	byte ptr [rcx + 2], 0x40
	je	.label_2619
.label_2627:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2631
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_2638
.label_2631:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_2638:
	test	rsi, rsi
	mov	r8, r9
	je	.label_2609
.label_2692:
	test	dl, 8
	je	.label_2691
	cmp	eax, 1
	jne	.label_2689
	test	byte ptr [rcx + 2], 0x40
	jne	.label_2619
.label_2689:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2704
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_2700
	nop	dword ptr [rax]
.label_2619:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_2609
.label_2704:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_2700:
	test	rcx, rcx
	je	.label_2609
	nop	word ptr [rax + rax]
.label_2691:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_2616
	cmp	eax, 1
	jne	.label_2621
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_2623
.label_2616:
	xor	edi, edi
	jmp	.label_2630
.label_2621:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_2632
.label_2663:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_2655
.label_2612:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_2655
.label_2632:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_2666
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_2688
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_2716
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_2612
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2622
	nop	word ptr cs:[rax + rax]
.label_2666:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2655
	nop	word ptr [rax + rax]
.label_2688:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2640
.label_2716:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2622:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_2640:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_2663
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_2655:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2679
	cmp	al, 0x13
	jne	.label_2681
.label_2679:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2632
	jmp	.label_2630
.label_2675:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2615
	nop	word ptr cs:[rax + rax]
.label_2623:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_2615
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_2682
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_2703
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2644
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_2675
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_2687
	nop	dword ptr [rax]
.label_2682:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2615
.label_2644:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_2703:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_2687:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_2705
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_2705:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_2615:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2720
	cmp	al, 0x13
	jne	.label_2681
.label_2720:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2623
	jmp	.label_2630
.label_2681:
	cmp	al, 0x11
	jne	.label_2726
	nop	
.label_2630:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_2609
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_1832]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2624
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_2628
.label_2726:
	and	r13b, 0x1f
	jne	.label_2637
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_2628:
	mov	r14, qword ptr [rbp - 0x90]
.label_2609:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_2668
	test	r15, r15
	jle	.label_2653
.label_2719:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2733
	xor	ecx, ecx
.label_2733:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_2660
	test	rax, rax
	je	.label_2660
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2672
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_2678
.label_2672:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_2660
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_2678:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_2674:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_2712
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2732:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2722
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_2613
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_2722:
	inc	r12
	cmp	r12, rax
	jl	.label_2732
.label_2712:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2607
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2613
.label_2607:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2614
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_2654
	nop	word ptr cs:[rax + rax]
.label_2614:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2642
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2613
.label_2642:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_2651
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_2698
	mov	rax, qword ptr [rbp - 0x98]
.label_2698:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2725
.label_2651:
	mov	rdx, qword ptr [rbp - 0x70]
.label_2725:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2654
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_2613
	nop	dword ptr [rax]
.label_2654:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_2674
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_2696
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2613
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2709
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2634
.label_2637:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_2719
.label_2625:
	mov	r14, -1
	test	r15, r15
	jle	.label_2645
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2728:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2728
.label_2645:
	mov	r15, r14
.label_2653:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_2714
	xor	eax, eax
	jmp	.label_2610
.label_2714:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2610
.label_2730:
	mov	rbx, r9
	mov	rcx, r8
.label_2617:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_2617
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_2611
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_2626
.label_2611:
	mov	rcx, qword ptr [rcx]
.label_2626:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2724
	nop	
.label_2634:
	test	dl, 1
	jne	.label_2730
.label_2724:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2634
.label_2709:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2641
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2647
.label_2652:
	mov	rdx, r10
	mov	rcx, r8
.label_2658:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2658
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2702
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_2650
.label_2702:
	mov	rcx, qword ptr [rcx]
.label_2650:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2664
.label_2647:
	test	r15b, 1
	jne	.label_2652
.label_2664:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2647
.label_2641:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_2670
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2673
.label_2694:
	mov	rdx, r10
	mov	rcx, r8
.label_2729:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2729
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2635
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2685
.label_2635:
	mov	rcx, qword ptr [rcx]
.label_2685:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2690
	nop	word ptr cs:[rax + rax]
.label_2673:
	test	r12b, 1
	jne	.label_2694
.label_2690:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2673
.label_2670:
	test	r11, r11
	je	.label_2618
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2701
.label_2717:
	mov	rdx, r10
	mov	rcx, r8
.label_2706:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2706
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2710
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2718
.label_2710:
	mov	rcx, qword ptr [rcx]
.label_2718:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2695
	nop	
.label_2701:
	test	r11b, 1
	jne	.label_2717
.label_2695:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2701
.label_2618:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_2708
	xor	ecx, ecx
	nop	
.label_2608:
	test	byte ptr [r9 + 1], 4
	jne	.label_2649
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_2608
	jmp	.label_2708
.label_2649:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2708
	mov	qword ptr [rax + 0x850], rcx
.label_2708:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2731
	call	free
.label_2731:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2633:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2633
	mov	rdi, r14
	call	free
	mov	al, 1
.label_2610:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2624:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_2625
.label_2660:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_2636
.label_2639:
	xor	eax, eax
	jmp	.label_2610
.label_2696:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2613
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2648
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2656
.label_2613:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2661
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2661:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2665
.label_2636:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_2671:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2671
.label_2665:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_2610
.label_2693:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_2680:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2680
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_2683
.label_2656:
	test	dl, 1
	jne	.label_2693
.label_2683:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2656
.label_2648:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2697
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2677
.label_2721:
	mov	rdx, r9
	mov	rcx, r8
.label_2707:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2707
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_2662
.label_2677:
	test	r15b, 1
	jne	.label_2721
.label_2662:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2677
.label_2697:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_2657
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2667
.label_2620:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_2713:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2713
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_2676
.label_2667:
	test	dl, 1
	jne	.label_2620
.label_2676:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2667
.label_2657:
	test	rcx, rcx
	je	.label_2618
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2629
.label_2723:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_2643:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2643
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_2646
.label_2629:
	test	cl, 1
	jne	.label_2723
.label_2646:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2629
	jmp	.label_2618
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4194c0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_1832]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2751
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2738
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2748:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2734
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2746
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2740
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2740
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2743:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2741
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2737
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2739
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2742
.label_2737:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2742
	jmp	.label_2741
.label_2739:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2741
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2741
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2749
	xor	edi, edi
	nop	dword ptr [rax]
.label_2744:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2744
.label_2749:
	test	eax, eax
	je	.label_2741
	cmp	rdi, -1
	je	.label_2741
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2742
.label_2741:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2736
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2736
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2736
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2750
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2745:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2745
.label_2750:
	cmp	rsi, -1
	je	.label_2736
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2736
	nop	dword ptr [rax]
.label_2742:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2747
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2752
.label_2747:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2752:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2738
.label_2736:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2743
.label_2740:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2748
	jmp	.label_2738
.label_2734:
	xor	ebp, ebp
	jmp	.label_2738
.label_2746:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2738:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2735:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2751:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2735
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419820

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_2802
	test	r13, r13
	je	.label_2772
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2753
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_2758
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2808
	xor	ecx, ecx
.label_2808:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2753
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2758
	xor	ebp, ebp
	nop	
.label_2775:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2753
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_2775
.label_2758:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_2782
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_2772
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_2789
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_2770:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2763
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2763
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2812
	test	rax, rax
	jle	.label_2763
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_2785:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_2777
	cmp	bl, 8
	jne	.label_2778
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_2778
	nop	word ptr cs:[rax + rax]
.label_2777:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_2778:
	add	rdx, 8
	dec	rax
	jne	.label_2785
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_2786
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2753
.label_2786:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_2763
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_2763
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2798:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2762
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_2811
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2799:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_2799
.label_2811:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_2762
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_2768
.label_2762:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2784
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2774
	xor	edi, edi
	nop	
.label_2756:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2756
.label_2774:
	cmp	rdi, -1
	je	.label_2784
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_2768
.label_2784:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2753
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2768:
	inc	r15
	cmp	r15, r8
	jl	.label_2798
	jmp	.label_2763
.label_2812:
	test	rax, rax
	jle	.label_2763
	xor	ebp, ebp
	jmp	.label_2803
	nop	word ptr cs:[rax + rax]
.label_2767:
	mov	rcx, qword ptr [r12]
.label_2803:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2754
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_2754
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2753
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2754:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2767
	nop	
.label_2763:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_2770
.label_2789:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_2772:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_2783
	jmp	.label_2782
.label_2802:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_2783:
	test	r13, r13
	je	.label_2780
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2780
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_2797
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2771:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_2771
.label_2797:
	cmp	r13, rax
	jge	.label_2755
	cmp	r13, -1
	je	.label_2755
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_2755
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2755
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_2766:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_2809
	cmp	eax, 4
	jne	.label_2792
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_2795
	jmp	.label_2792
	nop	word ptr cs:[rax + rax]
.label_2809:
	cmp	eax, 4
	jne	.label_2792
.label_2795:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_2806:
	cmp	qword ptr [rbp], r15
	jne	.label_2764
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_2810
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_2781
.label_2810:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_2781:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_2764
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2764
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2764
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2776
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2788:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2788
.label_2776:
	cmp	rdx, -1
	je	.label_2764
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_2764
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_2764
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2769
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_2804
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2791
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_2769
.label_2804:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_2769:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_2779
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2779
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2794
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_2790
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_2800:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_2805
	test	rdx, rdx
	je	.label_2796
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_2779
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2796
	jmp	.label_2779
	nop	word ptr [rax + rax]
.label_2805:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_2796:
	inc	rbp
	cmp	rbp, r10
	jl	.label_2800
.label_2790:
	mov	rbp, qword ptr [rsp + 0x90]
.label_2794:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_2760
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2807
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2801:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_2801
.label_2807:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2760
	cmp	rsi, rdi
	jle	.label_2760
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_2760
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_2761
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2757
.label_2761:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2765
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_2787
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2759:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2759
.label_2787:
	test	r10, r10
	je	.label_2793
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_2793:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_2760
	add	rdx, r8
	jmp	.label_2757
.label_2765:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_2757:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_2757
.label_2760:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_2764:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_2806
.label_2792:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2766
.label_2779:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2773
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2773:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_2780
	jmp	.label_2782
.label_2755:
	mov	dword ptr [rsp + 4], 0
.label_2780:
	xor	r12d, r12d
.label_2782:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2753:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2782
.label_2791:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2779
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a2b0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_2817
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2817
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2822
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2817
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2821
.label_2822:
	lea	r8, [r12 + 0x10]
.label_2821:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2818:
	dec	rcx
	mov	rdi, r11
.label_2813:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2827:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2823
	jl	.label_2825
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2827
	jmp	.label_2816
	nop	word ptr cs:[rax + rax]
.label_2825:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2813
	jmp	.label_2816
	nop	dword ptr [rax + rax]
.label_2823:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2819
	nop	dword ptr [rax + rax]
.label_2824:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2814
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2824
	jmp	.label_2819
.label_2814:
	je	.label_2826
	nop	word ptr cs:[rax + rax]
.label_2819:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2826:
	test	rcx, rcx
	jle	.label_2816
	cmp	rdi, 2
	jge	.label_2818
.label_2816:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_2820
	test	rax, rax
	js	.label_2820
	xor	edx, edx
.label_2829:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2830:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2828
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2830
	jmp	.label_2820
	nop	
.label_2828:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2829
	jmp	.label_2815
.label_2820:
	mov	rdx, r8
.label_2815:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2817:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a470

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_2836
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2831:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2849
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2849
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2860
	mov	r10, qword ptr [rax + 8]
.label_2860:
	test	r9, r9
	jle	.label_2840
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2844
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2850:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2850
.label_2844:
	cmp	rbp, -1
	je	.label_2840
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2842
.label_2840:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2842
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2857
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2832:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2832
.label_2857:
	cmp	rax, -1
	je	.label_2842
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2847
.label_2842:
	test	r10, r10
	jle	.label_2849
	test	r9, r9
	jle	.label_2851
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2852
	xor	esi, esi
	nop	dword ptr [rax]
.label_2839:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2839
.label_2852:
	cmp	rsi, -1
	je	.label_2851
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2849
.label_2851:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2849
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2834
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2837:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2837
.label_2834:
	cmp	rax, -1
	je	.label_2849
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2849
.label_2847:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2835
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2849:
	inc	r14
	cmp	r14, r9
	jl	.label_2831
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2836
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_2845
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_2855:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_2854
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2856:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2856
.label_2854:
	cmp	rax, -1
	je	.label_2863
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_2833
.label_2863:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_2833
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2841
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2848:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2848
.label_2841:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_2833
	cmp	r11, rsi
	jle	.label_2833
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_2833
	nop	word ptr cs:[rax + rax]
.label_2858:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2858
	nop	word ptr cs:[rax + rax]
.label_2833:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_2855
	jmp	.label_2843
.label_2836:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2843:
	call	free
	xor	ebp, ebp
.label_2859:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2845:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_2838:
	test	r11, r11
	jle	.label_2853
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_2862
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2846:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_2846
.label_2862:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_2853
	cmp	r11, rax
	jle	.label_2853
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_2853
	nop	word ptr cs:[rax + rax]
.label_2861:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_2861
	nop	word ptr cs:[rax + rax]
.label_2853:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_2838
	jmp	.label_2843
.label_2835:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2859
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a8c0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2865
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2864:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_2866
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2864
.label_2865:
	xor	eax, eax
.label_2866:
	add	rsp, 0x38
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
	#Procedure 0x41a9b0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2867
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2867
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_2867
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2867:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aa00

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2868
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_2883:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2878
	cmp	al, 8
	je	.label_2887
	cmp	al, 4
	jne	.label_2869
	cmp	r8, -1
	je	.label_2869
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_2892
	mov	r12d, ecx
	nop	
.label_2888:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2874
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_2874
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2880
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2872
.label_2880:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2872
	test	eax, eax
	jne	.label_2870
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_2872
.label_2870:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2874:
	mov	ecx, r12d
.label_2872:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2885
	test	al, al
	jne	.label_2886
.label_2885:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2888
	jmp	.label_2869
	nop	word ptr [rax + rax]
.label_2878:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2869
	xor	eax, eax
	jmp	.label_2895
	nop	
.label_2887:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_2869
	mov	eax, 0xffffffff
.label_2895:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_2869
	jmp	.label_2873
.label_2892:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_2879
	mov	ebx, ecx
.label_2871:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2881
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2882
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2877
	nop	
.label_2882:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2877
	test	eax, eax
	jne	.label_2876
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_2877
.label_2876:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2881:
	mov	ecx, ebx
.label_2877:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2884
	test	al, al
	jne	.label_2886
.label_2884:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2871
	jmp	.label_2869
.label_2879:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_2890:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2894
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2891
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2875
	nop	dword ptr [rax + rax]
.label_2891:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2875
	test	eax, eax
	jne	.label_2889
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_2889:
	xor	ebp, ebp
.label_2894:
	mov	ecx, ebx
.label_2875:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2893
	test	al, al
	jne	.label_2886
.label_2893:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2890
	jmp	.label_2869
.label_2886:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2873
	nop	word ptr cs:[rax + rax]
.label_2869:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_2883
.label_2868:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2873:
	add	rsp, 0x68
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
	#Procedure 0x41add0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_2896
	nop	word ptr [rax + rax]
.label_2899:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_2897
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_2899
	jmp	.label_2898
.label_2897:
	movzx	ecx, cl
	xor	eax, eax
.label_2898:
	sub	eax, ecx
.label_2896:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ae20

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
	jne	.label_2901
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2900
	test	cl, cl
	jne	.label_2900
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2900
.label_2901:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2900
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2900:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ae80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2903
	cmp	byte ptr [rax], 0x43
	jne	.label_2905
	cmp	byte ptr [rax + 1], 0
	je	.label_2902
.label_2905:
	mov	esi, OFFSET FLAT:label_2904
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2903
.label_2902:
	xor	ebx, ebx
.label_2903:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aec0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_90
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2906
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aef0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_2917
	cmp	byte ptr [rbx + 8], 0
	je	.label_2908
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_2916:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_2920
	test	rax, rax
	je	.label_2921
	cmp	rax, -1
	jne	.label_2922
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2907
.label_2908:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_2909
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_2907
.label_2920:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2907
.label_2921:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2910
	cmp	dword ptr [r12], 0
	jne	.label_2918
.label_2922:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2907
	mov	byte ptr [rbx + 8], 0
.label_2907:
	mov	byte ptr [rbx + 0x14], 1
.label_2917:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2909:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2914
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_2916
.label_2910:
	mov	edi, OFFSET FLAT:label_2919
	mov	esi, OFFSET FLAT:label_2912
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_2913
	call	__assert_fail
.label_2918:
	mov	edi, OFFSET FLAT:label_2911
	mov	esi, OFFSET FLAT:label_2912
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_2913
	call	__assert_fail
.label_2914:
	mov	edi, OFFSET FLAT:label_2915
	mov	esi, OFFSET FLAT:label_2912
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_2913
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b040
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b050
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r14], rax
	mov	al, byte ptr [rbx + 8]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_2923
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_2925
.label_2923:
	mov	qword ptr [r14 + 0xc], 0
.label_2925:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_2926
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2926:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_2924
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2924:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b0d0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	qword ptr [rsp + 8], rbp
	jb	.label_2959
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_2934
	shr	rax, 0x20
	jne	.label_2934
	mov	rax, qword ptr [rsp]
	jmp	.label_2937
.label_2959:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_2939
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_2937
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_2948:
	cmp	r14, 0xa
	jb	.label_2949
	mov	eax, r9d
	and	al, 1
	je	.label_2949
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_2949
	test	r10, r10
	je	.label_2952
	mov	byte ptr [rsp], r12b
	mov	rsi, r13
	sub	rsi, r8
	mov	rbx, rbp
	mov	rdi, r10
	mov	rbp, r9
	mov	r12, r10
	call	strnlen
	mov	r10, r12
	mov	r9, rbp
	mov	r12b, byte ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbx
	cmp	byte ptr [r10 + rax], 0
	mov	r8, r13
	je	.label_2952
	add	r10, rax
	mov	r8, r13
	jne	.label_2949
.label_2952:
	mov	qword ptr [rsp], r13
	mov	r13, r8
	mov	rbx, rbp
	mov	rbp, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0xe8]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_2928
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_2949:
	cmp	r15b, r12b
	jne	.label_2935
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_2942:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_2938
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_2937
	inc	rcx
	cmp	bl, dl
	je	.label_2942
	add	r13, rcx
	jmp	.label_2945
	nop	word ptr [rax + rax]
.label_2935:
	inc	r13
.label_2945:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_2948
	jmp	.label_2937
.label_2934:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x64], 0
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	al, al
	je	.label_2957
	shr	rax, 0x20
	je	.label_2932
.label_2957:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_2930:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_2931
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_2931
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_2931
	cmp	r15, rbp
	je	.label_2944
	sub	rbp, r15
	nop	dword ptr [rax]
.label_2946:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2941
	shr	rax, 0x20
	je	.label_2944
.label_2941:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_2946
.label_2944:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2951
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_2931
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_2950
	mov	dword ptr [rsp + 0x14], 0
.label_2951:
	mov	rbp, r15
.label_2931:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_2940
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_2940
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_2960
	jmp	.label_2927
.label_2940:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_2927
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_2927
.label_2960:
	mov	qword ptr [rsp + 0xe0], r13
	movups	xmm0, xmmword ptr [rsp + 0x60]
	movups	xmm1, xmmword ptr [rsp + 0x70]
	movups	xmm2, xmmword ptr [rsp + 0x80]
	movups	xmm3, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rsp + 0xb0], rax
	mov	byte ptr [rsp + 0xac], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_2953
	shr	rax, 0x20
	je	.label_2954
.label_2953:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_2956
	shr	rax, 0x20
	je	.label_2943
.label_2956:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_2955:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_2929
	test	eax, eax
	je	.label_2932
.label_2929:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_2933
	test	dl, dl
	jne	.label_2933
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_2936
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_2958
	nop	word ptr cs:[rax + rax]
.label_2933:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_2936
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_2936
.label_2958:
	add	r15, rax
	mov	qword ptr [rsp + 0xb0], r15
	mov	byte ptr [rsp + 0xac], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	inc	r14
	test	al, al
	je	.label_2955
	shr	rax, 0x20
	jne	.label_2955
	jmp	.label_2943
.label_2936:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_2927:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_2930
	shr	rax, 0x20
	jne	.label_2930
	jmp	.label_2932
.label_2939:
	mov	rax, qword ptr [rsp]
	jmp	.label_2937
.label_2938:
	mov	rax, rbp
	jmp	.label_2937
.label_2943:
	mov	rax, qword ptr [rsp + 0x70]
.label_2947:
	mov	qword ptr [rsp + 0x18], rax
.label_2932:
	mov	rax, qword ptr [rsp + 0x18]
.label_2937:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2928:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_2937
.label_2950:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_2947
.label_2954:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b680

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	jbe	.label_2976
	xor	eax, eax
	jmp	.label_2978
.label_2976:
	mov	qword ptr [rbp - 0xc8], r15
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2984
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r15, [rax + rdi + 0x1f]
	and	r15, 0xffffffffffffffe0
	jmp	.label_2989
.label_2984:
	call	mmalloca
	mov	r15, rax
.label_2989:
	test	r15, r15
	je	.label_2996
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rbx, [rbx + rbx*2]
	shl	rbx, 4
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2982
	shr	rax, 0x20
	je	.label_2983
.label_2982:
	lea	r13, [rbp - 0x50]
	lea	r14, [r15 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_2972:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, r13
	jne	.label_2987
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, r13
	call	memcpy
	mov	rax, r14
.label_2987:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_2992
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_2992:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_2972
	shr	rax, 0x20
	jne	.label_2972
.label_2983:
	lea	rsi, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_2981
	mov	r14d, 2
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2988:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r15 + rax - 0x30]
	cmp	byte ptr [r15 + rax - 0x20], 0
	je	.label_2985
	lea	r13, [r15 + rax - 0x1c]
	jmp	.label_2994
	nop	dword ptr [rax]
.label_2964:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2994:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_2969
	mov	ecx, dword ptr [r13]
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	jne	.label_2966
	jmp	.label_2975
	nop	word ptr cs:[rax + rax]
.label_2969:
	mov	rdx, qword ptr [r12 + 8]
	cmp	rdx, qword ptr [r15 + rax + 8]
	jne	.label_2966
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_2975
	nop	word ptr cs:[rax + rax]
.label_2966:
	test	rbx, rbx
	jne	.label_2964
	jmp	.label_2991
	nop	word ptr [rax + rax]
.label_2985:
	mov	r13, qword ptr [r12 + 8]
	jmp	.label_2993
	nop	word ptr [rax + rax]
.label_2979:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2993:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	r13, qword ptr [r15 + rax + 8]
	jne	.label_2961
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, r13
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_2975
.label_2961:
	test	rbx, rbx
	jne	.label_2979
.label_2991:
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	mov	rcx, qword ptr [rbp - 0x30]
	jmp	.label_2974
	nop	dword ptr [rax]
.label_2975:
	mov	rcx, qword ptr [rbp - 0x30]
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_2974:
	inc	r14
	cmp	r14, rcx
	jne	.label_2988
.label_2981:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xb4], 0
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2980
	test	eax, eax
	je	.label_2977
.label_2980:
	xor	r13d, r13d
	lea	r12, [rbp - 0x78]
	nop	word ptr cs:[rax + rax]
.label_2962:
	lea	rdx, [r13 + r13*2]
	shl	rdx, 4
	cmp	byte ptr [r15 + rdx + 0x10], 0
	je	.label_2990
	xor	cl, 1
	test	cl, 1
	jne	.label_2990
	cmp	dword ptr [r15 + rdx + 0x14], eax
	jne	.label_2973
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_2970
	nop	word ptr cs:[rax + rax]
.label_2990:
	mov	r14, qword ptr [r15 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_2973
	mov	rdi, qword ptr [r15 + rdx]
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_2970
.label_2973:
	test	r13, r13
	je	.label_2986
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r13*8]
	sub	r13, rbx
	test	rbx, rbx
	je	.label_2967
	nop	word ptr cs:[rax + rax]
.label_2965:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2995
	shr	rax, 0x20
	je	.label_2963
.label_2995:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_2965
	jmp	.label_2967
	nop	dword ptr [rax]
.label_2970:
	inc	r13
	add	rbx, r14
	mov	qword ptr [rbp - 0xb0], rbx
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r13, qword ptr [rbp - 0x30]
	jne	.label_2967
	jmp	.label_2971
	nop	dword ptr [rax]
.label_2986:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2968
	shr	rax, 0x20
	je	.label_2963
.label_2968:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r13d, r13d
.label_2967:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2962
	test	eax, eax
	jne	.label_2962
	jmp	.label_2977
.label_2996:
	xor	eax, eax
	jmp	.label_2978
.label_2971:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_2977:
	mov	rdi, r15
	call	freea
	mov	al, 1
.label_2978:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2963:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bae0

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_3005
	xor	eax, eax
	jmp	.label_2997
.label_3005:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_3001
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_3002
.label_3001:
	call	mmalloca
	mov	rdi, rax
.label_3002:
	test	rdi, rdi
	je	.label_2999
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_3008
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_3004:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_3006
	nop	word ptr cs:[rax + rax]
.label_3011:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_3006:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_3010
	test	rcx, rcx
	jne	.label_3011
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_3013
	nop	word ptr cs:[rax + rax]
.label_3010:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_3013:
	inc	rax
	cmp	rax, r12
	jne	.label_3004
.label_3008:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_3000
.label_2999:
	xor	eax, eax
	jmp	.label_2997
.label_3012:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_3000:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_3009:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_2998
	cmp	byte ptr [rcx + rdx], al
	jne	.label_3007
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_3009
	jmp	.label_3003
.label_3007:
	mov	rax, r8
	add	rax, rdx
	jne	.label_3012
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_3000
.label_3003:
	mov	qword ptr [r14], r15
.label_2998:
	call	freea
	mov	al, 1
.label_2997:
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc30

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_3025
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_3015
	lea	r14, [rbx + 4]
.label_3023:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_3026
	test	rax, rax
	je	.label_3014
	cmp	rax, -1
	jne	.label_3016
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_3017
.label_3015:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_3019
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_3017
.label_3026:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_3017
.label_3014:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_3018
	cmp	dword ptr [r12], 0
	jne	.label_3024
.label_3016:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_3017
	mov	byte ptr [rbx], 0
.label_3017:
	mov	byte ptr [rbx + 0xc], 1
.label_3025:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_3019:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_3022
	mov	byte ptr [rbx], 1
	jmp	.label_3023
.label_3018:
	mov	edi, OFFSET FLAT:label_2919
	mov	esi, OFFSET FLAT:label_3020
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_3021
	call	__assert_fail
.label_3024:
	mov	edi, OFFSET FLAT:label_2911
	mov	esi, OFFSET FLAT:label_3020
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_3021
	call	__assert_fail
.label_3022:
	mov	edi, OFFSET FLAT:label_2915
	mov	esi, OFFSET FLAT:label_3020
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_3021
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd80
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd90
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_3027
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_3028
.label_3027:
	mov	qword ptr [r14 + 4], 0
.label_3028:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_3029
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3029:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_3030
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_3030:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41be10

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1048
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, rdx
	mov	rbp, rsi
	mov	r14, rdi
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x38], rbp
	test	rbp, rbp
	je	.label_3043
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_3049:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_3037
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_3037
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_3039
	mov	r14d, 1
	jmp	.label_3039
	nop	word ptr [rax + rax]
.label_3037:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_3039:
	mov	eax, r14d
	and	al, 3
	jne	.label_3047
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_3049
	jmp	.label_3043
.label_3047:
	cmp	al, 3
	jne	.label_3036
.label_3043:
	lea	rbp, [rsp + 0x48]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x30], 0x1000
	xor	r14d, r14d
	lea	rcx, [rsp]
	lea	r8, [rsp + 0x30]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_3034
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_3036
.label_3034:
	mov	r14d, 1
.label_3036:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_3032
	test	rbx, rbx
	je	.label_3040
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_3041
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_3045
.label_3041:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_3050
.label_3045:
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp], rbx
	test	rax, rax
	je	.label_3031
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_3052:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_3046
	xor	eax, eax
	jmp	.label_3048
.label_3046:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_3048:
	and	al, 7
	jne	.label_3051
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_3052
	jmp	.label_3031
.label_3040:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_3053
.label_3050:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3032
.label_3051:
	cmp	al, 5
	jne	.label_3033
.label_3031:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_3038
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_3042
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_3053:
	xor	ebp, ebp
	jmp	.label_3032
.label_3038:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_3044
.label_3033:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_3035
.label_3044:
	cmp	rbp, qword ptr [r12]
	je	.label_3035
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_3035:
	mov	ebp, 0xffffffff
.label_3032:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3042:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c0a0

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_3065
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_3054
	mov	rbx, rbp
	mov	r13, r12
.label_3059:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_3055
	mov	rbp, rbx
	mov	r12, r13
.label_3066:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_3062
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_3062
.label_3065:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3058
.label_3054:
	call	__errno_location
	mov	r15, rax
.label_3067:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_3063
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_3057
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_3057
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_3067
	jmp	.label_3059
.label_3055:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_3056:
	cmp	dword ptr [r15], 7
	jne	.label_3064
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_3060
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_3060
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_3056
	jmp	.label_3066
.label_3057:
	mov	dword ptr [r15], 0xc
	jmp	.label_3061
.label_3060:
	mov	dword ptr [r15], 0xc
.label_3064:
	mov	r12, r13
.label_3061:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_3058:
	xor	r12d, r12d
.label_3062:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3063:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_3059
	jmp	.label_3061
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c2e0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_3068
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_3068
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_3070
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_3071
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_3070
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_3072
.label_3068:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_3070
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3069
.label_3071:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_3072:
	mov	dword ptr [rbx], ebp
.label_3069:
	xor	r14d, r14d
.label_3070:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c390

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c3d0

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
	#Procedure 0x41c3f0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_3073
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_3073
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_3073:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c430

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_3074
	test	dil, 0x10
	jne	.label_3075
	ret	
.label_3075:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_3074:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c450
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_3076
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_3076:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c470
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_3077
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3077:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_3078
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_3078:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c4c0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x41c4e0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_3082
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_3081
	shr	rax, 0x20
	je	.label_3079
.label_3081:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_3080:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_3080
	shr	rax, 0x20
	jne	.label_3080
.label_3079:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_3082:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]

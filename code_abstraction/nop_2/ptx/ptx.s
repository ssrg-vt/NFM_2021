	.section	.text
	.align	32
	#Procedure 0x401d00

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
	mov	esi, OFFSET FLAT:.str.35
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
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.41
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f80

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
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	r14, [rsp + 0x50]
	jmp	.label_40
.label_34:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [rip + output_format]],  eax
	nop	dword ptr [rax]
.label_40:
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_28
	cmp	eax, 9
	jle	.label_29
	cmp	eax, 0xa
	je	.label_34
	cmp	eax, 0x41
	jne	.label_36
	mov	byte ptr [byte ptr [rip + auto_reference]],  1
	jmp	.label_40
	nop	dword ptr [rax]
.label_28:
	lea	ecx, [rax - 0x46]
	cmp	ecx, 0x11
	jbe	.label_45
	lea	ecx, [rax - 0x62]
	cmp	ecx, 7
	jbe	.label_50
	add	eax, -0x6f
	cmp	eax, 8
	ja	.label_36
	jmp	qword ptr [word ptr [+ (rax * 8) + label_56]]
.label_2782:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + only_file]],  rax
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_45:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_75]]
.label_2925:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + truncation_string]],  rax
	jmp	.label_40
.label_50:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_84]]
.label_2904:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + break_file]],  rax
	jmp	.label_40
.label_2926:
	mov	byte ptr [byte ptr [rip + gnu_extensions]],  1
	jmp	.label_40
.label_2927:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + macro_name]],  rax
	jmp	.label_40
.label_2928:
	mov	dword ptr [dword ptr [rip + output_format]],  2
	jmp	.label_40
.label_2929:
	mov	byte ptr [byte ptr [rip + right_reference]],  1
	jmp	.label_40
.label_2930:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + context_regex]],  rax
	jmp	.label_40
.label_2931:
	mov	dword ptr [dword ptr [rip + output_format]],  3
	jmp	.label_40
.label_2932:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	cmp	byte ptr [rax], 0
	jne	.label_157
	xor	eax, eax
.label_157:
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	jmp	.label_40
.label_2905:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_40
.label_2906:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_175
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_175
	mov	qword ptr [word ptr [rip + gap_size]],  rax
	jmp	.label_40
.label_2907:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ignore_file]],  rax
	jmp	.label_40
.label_2783:
	mov	byte ptr [byte ptr [rip + input_reference]],  1
	jmp	.label_40
.label_2784:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_201
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_201
	mov	qword ptr [word ptr [rip + line_width]],  rax
	jmp	.label_40
.label_29:
	cmp	eax, -1
	jne	.label_209
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jne	.label_212
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_231
.label_212:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	je	.label_246
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rbx + rax*8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_33
	movzx	edx, dl
	cmp	edx, 0x2d
	jne	.label_262
	cmp	byte ptr [rcx + 1], 0
	je	.label_33
.label_262:
	mov	rdx,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rdx], rcx
	jmp	.label_267
.label_246:
	sub	ebp, eax
	mov	dword ptr [dword ptr [rip + number_input_files]],  ebp
	js	.label_117
	movsxd	rdi, ebp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	test	rdi, rdi
	js	.label_117
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	test	rdi, rdi
	js	.label_117
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	test	rax, rax
	jle	.label_231
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	lea	edx, [rsi + 1]
	lea	rsi, [rbx + rsi*8]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_154:
	mov	rbp, qword ptr [rsi + rdi*8]
	mov	bl, byte ptr [rbp]
	test	bl, bl
	je	.label_305
	movzx	ebx, bl
	cmp	ebx, 0x2d
	jne	.label_310
	cmp	byte ptr [rbp + 1], 0
	je	.label_305
.label_310:
	mov	qword ptr [rcx + rdi*8], rbp
	jmp	.label_314
	nop	
.label_305:
	mov	qword ptr [rcx + rdi*8], 0
.label_314:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [dword ptr [rip + optind]],  ebp
	inc	rdi
	cmp	rdi, rax
	jl	.label_154
	jmp	.label_231
.label_33:
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rcx], 0
.label_267:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cmp	ecx, ebp
	jge	.label_326
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.22
	call	freopen_safer
	test	rax, rax
	je	.label_334
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	inc	ecx
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_326:
	cmp	ecx, ebp
	jl	.label_343
.label_231:
	cmp	dword ptr [dword ptr [rip + output_format]],  0
	jne	.label_345
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	eax, 1
	inc	eax
	mov	dword ptr [dword ptr [rip + output_format]],  eax
.label_345:
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_11
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	dword ptr [rax]
.label_23:
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4]
	mov	byte ptr [byte ptr [rbx + folded_chars]],  cl
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [byte ptr [rbx + label_20]],  cl
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4 + 8]
	mov	byte ptr [byte ptr [rbx + label_21]],  cl
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4 + 0xc]
	mov	byte ptr [byte ptr [rbx + label_22]],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_23
.label_11:
	mov	rax,  qword ptr [word ptr [rip + context_regex]]
	test	rax, rax
	je	.label_239
	cmp	byte ptr [rax], 0
	jne	.label_76
	mov	qword ptr [word ptr [rip + context_regex]],  0
	jmp	.label_62
.label_239:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	jne	.label_67
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
	and	al, 1
	je	.label_70
.label_67:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.65
	jmp	.label_76
.label_70:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.64
.label_76:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_62:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_87
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	test	rdi, rdi
	jne	.label_94
	jmp	.label_98
.label_87:
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	test	rdi, rdi
	je	.label_100
.label_94:
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	edx, 0x100
	call	memset
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdi, rax
	jae	.label_232
	mov	rcx, rdi
	nop	dword ptr [rax]
.label_148:
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [byte ptr [rdx + word_fastmap]],  0
	inc	rcx
	cmp	rax, rcx
	jne	.label_148
.label_232:
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_155
	mov	byte ptr [byte ptr [rip + label_159]],  0
	mov	word ptr [word ptr [rip + label_160]],  0
.label_155:
	call	free
.label_98:
	mov	rdi,  qword ptr [word ptr [rip + ignore_file]]
	test	rdi, rdi
	je	.label_10
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_152]],  0
	jne	.label_10
	mov	qword ptr [word ptr [rip + ignore_file]],  0
.label_10:
	mov	rdi,  qword ptr [word ptr [rip + only_file]]
	test	rdi, rdi
	je	.label_181
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_185]],  0
	jne	.label_181
	mov	qword ptr [word ptr [rip + only_file]],  0
.label_181:
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	mov	qword ptr [word ptr [rip + total_line_count]],  0
	mov	qword ptr [word ptr [rip + maximum_word_length]],  0
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	xor	edx, edx
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	jle	.label_195
	nop	word ptr [rax + rax]
.label_236:
	mov	qword ptr [rsp + 0x20], rdx
	mov	r15, rdx
	shl	r15, 4
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	add	rsi, r15
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rdx*8]
	call	swallow_file_in_memory
	mov	r14,  qword ptr [word ptr [rip + text_buffers]]
	mov	r12, qword ptr [r14 + r15]
	mov	rbx, qword ptr [r14 + r15 + 8]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, r12
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	jne	.label_228
	cmp	r12, rbx
	mov	rbp, r12
	jae	.label_240
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_250:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_240
	inc	rbp
	cmp	rbp, rbx
	jb	.label_250
.label_240:
	mov	rax, rbp
	sub	rax, r12
	cmp	rbp, rbx
	jae	.label_251
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_259:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_228
	inc	rbp
	cmp	rbp, rbx
	jb	.label_259
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	qword ptr [rsp + 0x18], rax
.label_228:
	cmp	r12, rbx
	jae	.label_265
	lea	rax, [r14 + r15 + 8]
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x10], r12
	nop	dword ptr [rax]
.label_229:
	mov	r14, r12
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	je	.label_102
	mov	rdx, rbx
	sub	rdx, r14
	mov	edi, OFFSET FLAT:label_272
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r14
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_102
	test	rax, rax
	je	.label_224
	cmp	rax, -2
	je	.label_284
	mov	rax,  qword ptr [word ptr [rip + label_253]]
	mov	rbx, qword ptr [rax]
	add	rbx, r14
.label_102:
	mov	qword ptr [rsp + 0x48], rbp
	mov	qword ptr [rsp + 0x40], rbx
	nop	dword ptr [rax + rax]
.label_298:
	mov	r13, rbx
	cmp	r13, r14
	jbe	.label_292
	lea	rbx, [r13 - 1]
	movzx	ebp, byte ptr [r13 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_298
.label_292:
	mov	r15, r14
	jmp	.label_99
.label_149:
	mov	qword ptr [r8], rbx
	mov	qword ptr [rsi + rdi + 8], r12
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + rdi + 0x10], rax
	mov	rax, r13
	sub	rax, rbx
	mov	qword ptr [rsi + rdi + 0x18], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	dword ptr [rsi + rdi + 0x28], eax
	inc	rdx
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  rdx
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rbx, r15
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_18:
	inc	rbx
.label_318:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_322
	mov	rdx, r13
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_15
	cmp	rax, -2
	je	.label_338
	mov	rax,  qword ptr [word ptr [rip + label_341]]
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rcx,  qword ptr [word ptr [rip + label_342]]
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	jmp	.label_30
	nop	
.label_12:
	inc	rbx
.label_322:
	cmp	rbx, r13
	jae	.label_9
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_12
.label_9:
	cmp	rbx, r13
	je	.label_15
	mov	r15, rbx
	jae	.label_18
	nop	word ptr cs:[rax + rax]
.label_37:
	movzx	eax, byte ptr [r15]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_30
	inc	r15
	cmp	r15, r13
	jb	.label_37
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	r12, r15
	sub	r12, rbx
	je	.label_18
	cmp	r12,  qword ptr [word ptr [rip + maximum_word_length]]
	jle	.label_52
	mov	qword ptr [word ptr [rip + maximum_word_length]],  r12
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_210
	cmp	qword ptr [rsp + 0x48], rbx
	jae	.label_68
.label_109:
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
.label_77:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0xa
	je	.label_306
	inc	rcx
	cmp	rcx, rbx
	jb	.label_77
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_306:
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rax]
	cmp	rcx, rbp
	mov	rdx, rcx
	jae	.label_85
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp + 0x10]
	nop	dword ptr [rax]
.label_104:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_85
	inc	rdx
	cmp	rdx, rbp
	jb	.label_104
.label_85:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rax, rdx
	sub	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rax
	cmp	rdx, rbx
	jb	.label_109
	jmp	.label_68
.label_79:
	mov	qword ptr [rsp + 0x48], rcx
.label_68:
	cmp	qword ptr [rsp + 0x48], rbx
	ja	.label_99
.label_210:
	cmp	qword ptr [word ptr [rip + ignore_file]],  0
	je	.label_147
	mov	rdx,  qword ptr [word ptr [rip + label_152]]
	test	rdx, rdx
	jle	.label_147
	mov	rax,  qword ptr [word ptr [rip + ignore_table]]
	mov	qword ptr [rsp + 0x30], rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	mov	byte ptr [rsp + 0x28], al
	xor	r11d, r11d
.label_238:
	mov	r10, rdx
	dec	r10
	nop	dword ptr [rax]
.label_233:
	lea	rax, [r11 + r10]
	mov	rdx, rax
	shr	rdx, 0x3f
	add	rdx, rax
	sar	rdx, 1
	mov	rax, rdx
	shl	rax, 4
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rcx + rax]
	mov	r9, qword ptr [rcx + rax + 8]
	cmp	r12, r9
	mov	rcx, r9
	cmovle	rcx, r12
	test	byte ptr [rsp + 0x28], 1
	je	.label_169
	test	rcx, rcx
	jle	.label_191
	mov	rsi, qword ptr [rsi]
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_202:
	movzx	eax, byte ptr [rbx + r8]
	movzx	edi,  byte ptr [byte ptr [rax + folded_chars]]
	movzx	eax, byte ptr [rsi + r8]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	sub	edi, eax
	jne	.label_196
	inc	r8
	cmp	r8, rcx
	jl	.label_202
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_169:
	test	rcx, rcx
	jle	.label_191
	mov	rsi, qword ptr [rsi]
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_216:
	movzx	edi, byte ptr [rbx + rax]
	movzx	ebp, byte ptr [rsi + rax]
	sub	edi, ebp
	jne	.label_196
	inc	rax
	cmp	rax, rcx
	jl	.label_216
.label_191:
	cmp	r12, r9
	setg	al
	jl	.label_145
	movzx	edi, al
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_196:
	test	edi, edi
	js	.label_145
.label_225:
	test	edi, edi
	jle	.label_99
	cmp	rdx, r10
	lea	r11, [rdx + 1]
	jl	.label_233
	jmp	.label_147
	nop	dword ptr [rax + rax]
.label_145:
	cmp	r11, rdx
	jl	.label_238
.label_147:
	cmp	qword ptr [word ptr [rip + only_file]],  0
	je	.label_244
	mov	rax,  qword ptr [word ptr [rip + label_185]]
	test	rax, rax
	jle	.label_99
	mov	rcx,  qword ptr [word ptr [rip + only_table]]
	mov	qword ptr [rsp + 0x30], rcx
	mov	cl,  byte ptr [byte ptr [rip + ignore_case]]
	mov	byte ptr [rsp + 0x28], cl
	xor	r11d, r11d
.label_311:
	mov	r10, rax
	dec	r10
	nop	word ptr cs:[rax + rax]
.label_303:
	lea	rcx, [r11 + r10]
	mov	rax, rcx
	shr	rax, 0x3f
	add	rax, rcx
	sar	rax, 1
	mov	rcx, rax
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rdx + rcx]
	mov	r9, qword ptr [rdx + rcx + 8]
	cmp	r12, r9
	mov	rdx, r9
	cmovle	rdx, r12
	test	byte ptr [rsp + 0x28], 1
	je	.label_256
	test	rdx, rdx
	jle	.label_268
	mov	rdi, qword ptr [rsi]
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_282:
	movzx	ecx, byte ptr [rbx + r8]
	movzx	esi,  byte ptr [byte ptr [rcx + folded_chars]]
	movzx	ecx, byte ptr [rdi + r8]
	movzx	ecx,  byte ptr [byte ptr [rcx + folded_chars]]
	sub	esi, ecx
	jne	.label_274
	inc	r8
	cmp	r8, rdx
	jl	.label_282
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_256:
	test	rdx, rdx
	jle	.label_268
	mov	rdi, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_290:
	movzx	esi, byte ptr [rbx + rcx]
	movzx	ebp, byte ptr [rdi + rcx]
	sub	esi, ebp
	jne	.label_274
	inc	rcx
	cmp	rcx, rdx
	jl	.label_290
.label_268:
	cmp	r12, r9
	setg	cl
	jl	.label_91
	movzx	esi, cl
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_274:
	test	esi, esi
	js	.label_91
.label_296:
	test	esi, esi
	jle	.label_244
	cmp	rax, r10
	lea	r11, [rax + 1]
	jl	.label_303
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_91:
	cmp	r11, rax
	jl	.label_311
	jmp	.label_99
.label_244:
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	cmp	rdx,  qword ptr [word ptr [rip + occurs_alloc]]
	jne	.label_315
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_317
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rdx, rax
	jae	.label_321
	mov	rbp, rcx
	mov	rax, rdx
	shr	rax, 1
	lea	rdx, [rdx + rax + 1]
	jmp	.label_328
.label_315:
	mov	rsi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_332
.label_317:
	mov	rbp, rcx
	test	rdx, rdx
	mov	eax, 2
	cmove	rdx, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	cmp	rdx, rax
	jae	.label_336
.label_328:
	mov	qword ptr [word ptr [rip + occurs_alloc]],  rdx
	shl	rdx, 4
	lea	rsi, [rdx + rdx*2]
	call	xrealloc
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + occurs_table.0]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	mov	rcx, rbp
.label_332:
	lea	rdi, [rdx + rdx*2]
	shl	rdi, 4
	lea	r8, [rsi + rdi]
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_17
	cmp	qword ptr [rsp + 0x48], rbx
	jae	.label_35
.label_96:
	mov	qword ptr [rsp + 0x30], r8
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
.label_226:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0xa
	je	.label_242
	inc	rcx
	cmp	rcx, rbx
	jb	.label_226
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_242:
	mov	qword ptr [rsp + 0x28], rdx
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax]
	cmp	rcx, rax
	mov	rdx, rcx
	jae	.label_19
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rbp, rax
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_95:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_19
	inc	rdx
	cmp	rdx, rbp
	jb	.label_95
.label_19:
	mov	qword ptr [rsp + 0x48], rdx
	cmp	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	jb	.label_96
	jmp	.label_35
.label_17:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_108
	mov	rax, qword ptr [rsp + 0x10]
	sub	rax, rbx
	mov	qword ptr [rsi + rdi + 0x20], rax
	mov	al, 1
	cmp	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_115
	mov	qword ptr [word ptr [rip + reference_max_width]],  rcx
	jmp	.label_115
.label_108:
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_149
.label_82:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x30]
.label_35:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	mov	qword ptr [rsi + rdi + 0x20], rax
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
.label_115:
	test	al, 1
	je	.label_163
	mov	qword ptr [rsp + 0x18], rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, r14
	jne	.label_149
	cmp	r14, r13
	mov	rbp, r14
	jae	.label_55
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x30], r8
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	r8, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rbp, r14
	nop	
.label_194:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_55
	inc	rbp
	cmp	rbp, r13
	jb	.label_194
.label_55:
	cmp	rbp, r13
	jae	.label_235
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_101:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_235
	inc	rbp
	cmp	rbp, r13
	jb	.label_101
.label_235:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rbp
	jmp	.label_149
.label_163:
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_149
	nop	word ptr [rax + rax]
.label_15:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [rsp + 0x40]
	cmp	r12, rbx
	mov	rbp, qword ptr [rsp + 0x48]
	jb	.label_229
.label_265:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	inc	rax
	mov	qword ptr [word ptr [rip + total_line_count]],  rax
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rdx, rax
	jl	.label_236
	mov	rsi,  qword ptr [word ptr [rip + number_of_occurs.0]]
	test	rsi, rsi
	je	.label_195
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_195:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_257
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	xor	edi, edi
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	je	.label_260
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	rax,  qword ptr [word ptr [rip + file_line_count]]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	test	rbp, rbp
	je	.label_270
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_270:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	rbx, eax
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_283
	call	strlen
	add	rbx, rax
.label_283:
	mov	rdi,  qword ptr [word ptr [rip + reference_max_width]]
	cmp	rbx, rdi
	jle	.label_288
	mov	qword ptr [word ptr [rip + reference_max_width]],  rbx
	mov	rdi, rbx
.label_288:
	inc	rbp
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rbp, rax
	jb	.label_294
.label_260:
	lea	rax, [rdi + 1]
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_302
.label_257:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_309
.label_302:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	je	.label_312
.label_309:
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	jmp	.label_316
.label_312:
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	add	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	sub	rax, rcx
	mov	qword ptr [word ptr [rip + line_width]],  rax
.label_316:
	test	rax, rax
	jns	.label_324
	mov	qword ptr [word ptr [rip + line_width]],  0
	xor	eax, eax
.label_324:
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [word ptr [rip + half_line_width]],  rbx
	mov	rbp, rbx
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	mov	qword ptr [word ptr [rip + before_max_width]],  rbp
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	test	rdi, rdi
	je	.label_255
	cmp	byte ptr [rdi], 0
	je	.label_255
	call	strlen
	mov	qword ptr [word ptr [rip + truncation_string_length]],  rax
	jmp	.label_349
.label_255:
	mov	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
.label_349:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	add	rax, rax
	test	cl, cl
	je	.label_16
	or	rax, 1
	jmp	.label_27
.label_16:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [word ptr [rip + before_max_width]],  rcx
.label_27:
	sub	rbx, rax
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	call	__ctype_b_loc
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_41]]
	pand	xmm0,  xmmword ptr [word ptr [rip + label_42]]
	nop	word ptr cs:[rax + rax]
.label_61:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + edited_flag]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + label_58]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + label_59]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + label_60]],  xmm1
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_61
	mov	byte ptr [byte ptr [rip + label_173]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	je	.label_174
	cmp	eax, 3
	jne	.label_112
	mov	byte ptr [byte ptr [rip + label_118]],  1
	mov	byte ptr [byte ptr [rip + label_119]],  1
	mov	byte ptr [byte ptr [rip + label_120]],  1
	mov	byte ptr [byte ptr [rip + label_121]],  1
	mov	dword ptr [dword ptr [rip + label_122]],  0x1010101
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_123]]
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_124]]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_125]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_126]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_127]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_128]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_129]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_130]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_131]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_132]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_133]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_134]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_135]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_136]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_137]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_138]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_139]],  xmm2
	jmp	.label_112
.label_174:
	mov	byte ptr [byte ptr [rip + label_215]],  1
.label_112:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	cmp	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	jle	.label_223
	mov	r14,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	ebp, 1
	xor	eax, eax
	jmp	.label_144
.label_80:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_90
.label_182:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_248
.label_89:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_249
.label_183:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_254
.label_208:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_207
.label_197:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_323
.label_340:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_287
.label_188:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_13
.label_189:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_106
.label_211:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_13
.label_297:
	mov	esi, 0x3a
	call	__overflow
	jmp	.label_245
	nop	word ptr [rax + rax]
.label_144:
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [word ptr [rip + keyafter]],  rax
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [rax + rcx]
	mov	qword ptr [word ptr [rip + label_24]],  rbx
	mov	rdx, qword ptr [r14 + 0x10]
	add	rdx, rax
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [rax + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi,  qword ptr [word ptr [rip + text_buffers]]
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	jge	.label_279
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	add	rcx, rax
	cmp	rbx, rcx
	ja	.label_279
	mov	qword ptr [word ptr [rip + label_24]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_307
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_83
	cmp	rax, -1
	cmove	rax, rbp
	add	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	jmp	.label_275
	nop	word ptr [rax + rax]
.label_307:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_327
	cmp	rbx, r15
	jae	.label_275
	inc	rbx
	mov	rcx, rbx
	nop	word ptr [rax + rax]
.label_339:
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_275
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_339
	jmp	.label_275
.label_327:
	inc	rbx
	nop	dword ptr [rax]
.label_275:
	cmp	rbx, r15
	jb	.label_347
.label_279:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	add	rcx, rax
	cmp	rbx, rcx
	jbe	.label_348
	mov	rbx,  qword ptr [word ptr [rip + label_24]]
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	qword ptr [word ptr [rip + label_24]],  rbx
.label_31:
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	dl
	and	dl, cl
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  dl
	cmp	rbx, rax
	jbe	.label_105
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx]
	dec	rbx
	nop	
.label_51:
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_105
	mov	qword ptr [word ptr [rip + label_24]],  rbx
	cmp	rbx, rax
	lea	rbx, [rbx - 1]
	ja	.label_51
.label_105:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	neg	rcx
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	add	rdx,  qword ptr [word ptr [rip + maximum_word_length]]
	cmp	rdx, rcx
	jge	.label_54
	mov	rbx, rax
	sub	rbx, rdx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_69
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_83
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	jmp	.label_88
.label_54:
	add	rbx, rax
.label_88:
	mov	qword ptr [word ptr [rip + before]],  rbx
	mov	qword ptr [word ptr [rip + label_47]],  rax
	cmp	rax, rbx
	jbe	.label_97
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rcx]
	lea	rdx, [rax - 1]
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_222
	mov	qword ptr [word ptr [rip + label_47]],  rcx
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	mov	rax, rcx
	ja	.label_156
	mov	qword ptr [rsp + 0x40], r14
	inc	rdx
	mov	rax, rcx
	jmp	.label_153
	nop	dword ptr [rax]
.label_97:
	mov	qword ptr [rsp + 0x40], r14
	mov	rdx, rax
	jmp	.label_153
	nop	word ptr [rax + rax]
.label_222:
	mov	qword ptr [rsp + 0x40], r14
	inc	rcx
	mov	rdx, rcx
.label_153:
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	mov	rsi, rbx
	jae	.label_162
	nop	word ptr cs:[rax + rax]
.label_178:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_172
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_re_match
	cmp	rax, -2
	je	.label_186
	cmp	rax, -1
	mov	esi, 1
	cmovne	rsi, rax
	add	rsi,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + before]],  rsi
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	mov	rax,  qword ptr [word ptr [rip + label_47]]
	mov	rdx, rax
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_172:
	movzx	ecx, byte ptr [rsi]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_205
	cmp	rsi, rdx
	jae	.label_190
	inc	rsi
	mov	rcx, rsi
	nop	word ptr [rax + rax]
.label_217:
	mov	rsi, rcx
	mov	qword ptr [word ptr [rip + before]],  rsi
	cmp	rsi, rdx
	jae	.label_190
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [byte ptr [rdi + word_fastmap]],  0
	jne	.label_217
	jmp	.label_190
.label_205:
	inc	rsi
	mov	qword ptr [word ptr [rip + before]],  rsi
	nop	dword ptr [rax + rax]
.label_190:
	lea	rcx, [rsi + r14]
	cmp	rcx, rdx
	jb	.label_178
.label_162:
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rdx, rsi
	je	.label_234
	nop	word ptr [rax + rax]
.label_243:
	mov	rcx, rdx
	cmp	rcx, r13
	jbe	.label_158
	lea	rdx, [rcx - 1]
	movzx	edi, byte ptr [rcx - 1]
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rbp]
	test	byte ptr [rbp + rdi*2 + 1], 0x20
	jne	.label_243
.label_158:
	cmp	qword ptr [rsp + 0x30], rcx
	setb	cl
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_234:
	xor	ecx, ecx
.label_179:
	mov	byte ptr [byte ptr [rip + before_truncation]],  cl
	cmp	rsi, r12
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx]
	nop	word ptr cs:[rax + rax]
.label_320:
	movzx	edx, byte ptr [rsi]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_143
	inc	rsi
	mov	qword ptr [word ptr [rip + before]],  rsi
	cmp	rsi, r12
	jb	.label_320
.label_143:
	sub	r14, rax
	add	r14, rsi
	sub	r14,  qword ptr [word ptr [rip + gap_size]]
	test	r14, r14
	jle	.label_261
	mov	rax,  qword ptr [word ptr [rip + label_24]]
	mov	qword ptr [word ptr [rip + tail]],  rax
	cmp	rax, r12
	jae	.label_66
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx]
	nop	word ptr [rax + rax]
.label_276:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_66
	inc	rax
	mov	qword ptr [word ptr [rip + tail]],  rax
	cmp	rax, r12
	jb	.label_276
.label_66:
	mov	qword ptr [word ptr [rip + label_71]],  rax
	mov	rbp, rax
	cmp	rax, r15
	jae	.label_281
	nop	dword ptr [rax]
.label_213:
	mov	qword ptr [word ptr [rip + label_71]],  rbp
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_192
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_295
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax,  qword ptr [word ptr [rip + tail]]
	jmp	.label_74
	nop	dword ptr [rax]
.label_192:
	movzx	ecx, byte ptr [rbp]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_39
	cmp	rbp, r15
	jae	.label_74
	inc	rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_206:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_74
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_206
	jmp	.label_74
.label_39:
	inc	rbp
	nop	
.label_74:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_200
	cmp	rbp, rcx
	jb	.label_213
.label_200:
	cmp	rbp, rcx
	jae	.label_289
.label_281:
	mov	r14, qword ptr [rsp + 0x40]
	mov	qword ptr [word ptr [rip + label_71]],  rbp
	jmp	.label_330
	nop	dword ptr [rax]
.label_261:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_26
.label_69:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_346
	mov	rcx, rdx
	neg	rcx
	jns	.label_88
	mov	rcx, rax
	sub	rcx, rdx
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rbx, rcx
	cmp	rbx, rax
	jae	.label_88
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_141
	jmp	.label_88
.label_289:
	mov	rbp,  qword ptr [word ptr [rip + label_71]]
	mov	r14, qword ptr [rsp + 0x40]
.label_330:
	cmp	rbp, rax
	jbe	.label_204
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	cl
	and	cl, dl
	jmp	.label_46
	nop	dword ptr [rax]
.label_204:
	xor	ecx, ecx
.label_46:
	mov	byte ptr [byte ptr [rip + tail_truncation]],  cl
	cmp	rbp, rax
	jbe	.label_26
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	dword ptr [rax + rax]
.label_230:
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_26
	mov	qword ptr [word ptr [rip + label_71]],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_230
	nop	dword ptr [rax + rax]
.label_26:
	mov	rbp,  qword ptr [word ptr [rip + keyafter_max_width]]
	sub	rbp,  qword ptr [word ptr [rip + label_24]]
	add	rbp,  qword ptr [word ptr [rip + keyafter]]
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	test	rbp, rbp
	jle	.label_25
	mov	rdx,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + label_113]],  rdx
	cmp	rdx, r13
	jbe	.label_114
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_142:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_335
	mov	qword ptr [word ptr [rip + label_113]],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_142
.label_335:
	inc	rdx
	jmp	.label_114
	nop	
.label_187:
	inc	rbx
.label_114:
	mov	qword ptr [word ptr [rip + head]],  rbx
	jmp	.label_150
	nop	dword ptr [rax]
.label_180:
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [word ptr [rip + head]],  rbx
	mov	rdx,  qword ptr [word ptr [rip + label_113]]
.label_150:
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jae	.label_164
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_168
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	jne	.label_180
	jmp	.label_32
	nop	dword ptr [rax]
.label_168:
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_187
	cmp	rbx, rdx
	jae	.label_150
	inc	rbx
	mov	rax, rbx
	nop	word ptr [rax + rax]
.label_199:
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, rdx
	jae	.label_150
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	jne	.label_199
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_164:
	cmp	rdx, rbx
	jbe	.label_227
	mov	byte ptr [byte ptr [rip + before_truncation]],  0
	cmp	qword ptr [rsp + 0x30], rbx
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	al
	and	al, cl
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_25:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	mov	ebp, 1
	jmp	.label_53
	nop	word ptr [rax + rax]
.label_227:
	xor	eax, eax
.label_304:
	mov	ebp, 1
	mov	byte ptr [byte ptr [rip + head_truncation]],  al
	cmp	rbx, rdx
	jae	.label_53
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax]
	nop	word ptr [rax + rax]
.label_247:
	movzx	ecx, byte ptr [rbx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_53
	inc	rbx
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, rdx
	jb	.label_247
	nop	dword ptr [rax]
.label_53:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_278
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_285
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_285:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	call	stpcpy
	mov	rbp, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [word ptr [rip + label_38]],  rax
	mov	ebp, 1
	jmp	.label_165
	nop	word ptr cs:[rax + rax]
.label_278:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_165
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	qword ptr [word ptr [rip + label_38]],  rax
	cmp	rax, r15
	jae	.label_165
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx]
	nop	word ptr cs:[rax + rax]
.label_299:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_165
	inc	rax
	mov	qword ptr [word ptr [rip + label_38]],  rax
	cmp	rax, r15
	jb	.label_299
	nop	dword ptr [rax]
.label_165:
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	jb	.label_329
	je	.label_103
	cmp	eax, 3
	jne	.label_90
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.90
	xor	eax, eax
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_182
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_248:
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_71]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_47]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rbp,  qword ptr [word ptr [rip + keyafter]]
	mov	r15,  qword ptr [word ptr [rip + label_24]]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_350
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_64
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_32
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_329:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	jne	.label_151
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_38]]
	movzx	ebx,  byte ptr [byte ptr [rip + auto_reference]]
	call	print_field
	and	ebx, 1
	cmp	ebx, 1
	jne	.label_293
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_297
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_245:
	mov	rax,  qword ptr [word ptr [rip + gap_size]]
	add	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rbx,  qword ptr [word ptr [rip + reference]]
	sub	rbx,  qword ptr [word ptr [rip + label_38]]
	add	rbx, rax
	cmp	rbx, 2
	jl	.label_151
	jmp	.label_111
.label_103:
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	xor	eax, eax
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_71]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_176
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_176:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_89
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_249:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_167
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_167:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_47]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_183
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_254:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_24]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_203
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_203:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_208
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_207:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_116
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_116:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_113]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_197
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_323:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_252
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
.label_252:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_38]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_188
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_13
.label_293:
	mov	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rdx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdx + rax]
	mov	rcx,  qword ptr [word ptr [rip + label_38]]
	mov	rbp,  qword ptr [word ptr [rip + reference]]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	jle	.label_151
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	sub	rbx, rcx
	jmp	.label_78
.label_331:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_286
	nop	word ptr [rax + rax]
.label_78:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_331
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_286:
	dec	rbx
	cmp	rbx, 1
	jg	.label_78
	jmp	.label_151
.label_49:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_111:
	dec	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_49
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_301:
	cmp	rbx, 1
	jg	.label_111
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_71]]
	cmp	rdi, rsi
	jae	.label_170
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_325
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	cl,  byte ptr [byte ptr [rip + tail_truncation]]
	jmp	.label_333
.label_170:
	mov	rbx,  qword ptr [word ptr [rip + half_line_width]]
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rax,  qword ptr [word ptr [rip + label_47]]
	mov	rsi,  qword ptr [word ptr [rip + before]]
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_337
	mov	rbp,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	edi, edi
	sub	rdi, rbp
	jmp	.label_344
.label_350:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_44
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_43
	lea	rax, [rbp + 1]
	nop	
.label_300:
	mov	rbx, rax
	cmp	rbx, r15
	jae	.label_43
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	jne	.label_300
	jmp	.label_43
.label_325:
	xor	ecx, ecx
.label_333:
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	mov	r9,  qword ptr [word ptr [rip + gap_size]]
	mov	r8,  qword ptr [word ptr [rip + label_47]]
	mov	rsi,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	ebp, ebp
	sub	rbp, rax
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rbx, rbp
	jne	.label_48
	xor	ebx, ebx
.label_48:
	mov	rdi,  qword ptr [word ptr [rip + label_71]]
	mov	rax,  qword ptr [word ptr [rip + tail]]
	test	cl, cl
	mov	ecx, 0
	cmove	rbp, rcx
	mov	rcx, rdx
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbx
	sub	rcx, rdi
	add	rcx, rbp
	add	rcx, rax
	test	rcx, rcx
	jle	.label_72
	add	rbx, rbp
	add	rbx, rdx
	add	rbx, rsi
	lea	rbx, [rax + rbx + 1]
	sub	rbx, r9
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_92
.label_107:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_171
	nop	dword ptr [rax + rax]
.label_92:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_107
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_171:
	dec	rbx
	cmp	rbx, 1
	jg	.label_92
	jmp	.label_72
.label_337:
	xor	edi, edi
.label_344:
	mov	rdx, rbx
	sub	rdx, rcx
	sub	rdx, rax
	add	rdx, rsi
	add	rdx, rdi
	test	rdx, rdx
	jle	.label_72
	add	rdi, rbx
	lea	rbx, [rsi + rdi + 1]
	sub	rbx, rcx
	sub	rbx, rax
	jmp	.label_166
.label_93:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_161
	nop	dword ptr [rax]
.label_166:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_93
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_161:
	dec	rbx
	cmp	rbx, 1
	jg	.label_166
.label_72:
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_177
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_177:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_47]]
	call	print_field
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	test	rbx, rbx
	jle	.label_193
	inc	rbx
	jmp	.label_86
.label_63:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_63
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_241:
	dec	rbx
	cmp	rbx, 1
	jg	.label_86
.label_193:
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_24]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_291
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_291:
	mov	rbp,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_113]]
	mov	rcx, rbp
	sub	rcx, rsi
	jae	.label_319
	mov	r9,  qword ptr [word ptr [rip + half_line_width]]
	mov	r8,  qword ptr [word ptr [rip + label_24]]
	mov	r10,  qword ptr [word ptr [rip + keyafter]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	ebx, ebx
	sub	rbx, rax
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	mov	rdx, rbx
	jne	.label_237
	xor	edx, edx
.label_237:
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
	test	al, al
	mov	edi, 0
	cmove	rbx, rdi
	add	rcx, r9
	sub	rcx, r8
	add	rcx, r10
	add	rcx, rdx
	add	rcx, rbx
	test	rcx, rcx
	jle	.label_273
	add	rdx, rbx
	add	rdx, rbp
	add	rdx, r9
	lea	rbx, [r10 + rdx + 1]
	sub	rbx, rsi
	sub	rbx, r8
	jmp	.label_258
.label_14:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_263
	nop	word ptr cs:[rax + rax]
.label_258:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_14
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_263:
	dec	rbx
	cmp	rbx, 1
	jg	.label_258
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
.label_273:
	test	al, al
	je	.label_277
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_277:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_113]]
	call	print_field
	mov	ebp, 1
	jmp	.label_65
.label_319:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	mov	ebp, 1
	jne	.label_266
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_65
.label_266:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_65
	mov	rcx,  qword ptr [word ptr [rip + half_line_width]]
	mov	rax,  qword ptr [word ptr [rip + label_24]]
	mov	rdx,  qword ptr [word ptr [rip + keyafter]]
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_214
	mov	rdi,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	esi, esi
	sub	rsi, rdi
	jmp	.label_313
.label_346:
	inc	rbx
	jmp	.label_88
.label_44:
	lea	rbx, [rbp + 1]
.label_43:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_113]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_340
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_287:
	mov	ebp, 1
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_280
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
.label_280:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_189
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_38]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_211
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_13
.label_214:
	xor	esi, esi
.label_313:
	mov	rdi, rcx
	sub	rdi, rax
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_65
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_73
.label_269:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_269
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_81:
	dec	rbx
	cmp	rbx, 1
	jg	.label_73
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_57
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
.label_57:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	test	rbx, rbx
	jle	.label_140
	inc	rbx
	jmp	.label_184
.label_146:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_146
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_271:
	dec	rbx
	cmp	rbx, 1
	jg	.label_184
.label_140:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_38]]
	call	print_field
	nop	dword ptr [rax + rax]
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_80
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_90:
	add	r14, 0x30
	mov	rax, qword ptr [rsp + 0x38]
	inc	rax
	cmp	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	jl	.label_144
.label_223:
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	je	.label_198
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	edx, 0x100
	call	memset
	mov	byte ptr [byte ptr [rip + label_159]],  0
	mov	word ptr [word ptr [rip + label_160]],  0
	jmp	.label_98
.label_198:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + word_fastmap]],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_218]],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_219]],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_220]],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_221
	jmp	.label_98
.label_338:
	call	matcher_error
.label_186:
	call	matcher_error
.label_32:
	call	matcher_error
.label_295:
	call	matcher_error
.label_83:
	call	matcher_error
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + context_regex]]
.label_110:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_284:
	call	matcher_error
.label_209:
	cmp	eax, 0xffffff7d
	je	.label_264
	cmp	eax, 0xffffff7e
	jne	.label_36
	xor	edi, edi
	call	usage
.label_264:
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	mov	rbp,  qword ptr [word ptr [rip + Version]]
	mov	edi, OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.20
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_36:
	mov	edi, 1
	call	usage
.label_321:
	call	xalloc_die
.label_117:
	call	xalloc_die
.label_336:
	call	xalloc_die
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
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
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_308
.label_201:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_308:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_110
.label_334:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0

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
	mov	al, byte ptr [rbx]
	test	al, al
	mov	r15, r14
	je	.label_375
	mov	r15, r14
	jmp	.label_364
.label_352:
	movsx	eax, dl
	mov	cl, al
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_380
	add	eax, -0x57
	jmp	.label_354
.label_368:
	add	rbx, 2
	xor	eax, eax
	jmp	.label_351
.label_380:
	add	dl, 0xbf
	movzx	ecx, dl
	cmp	ecx, 5
	ja	.label_359
	add	eax, -0x37
	jmp	.label_354
.label_374:
	add	rbx, 3
	jmp	.label_351
.label_359:
	add	eax, -0x30
.label_354:
	movzx	esi, byte ptr [rbx + 3]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_363
	add	rbx, 3
	jmp	.label_356
.label_363:
	movsx	edx, sil
	shl	eax, 4
	mov	cl, dl
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 6
	jae	.label_366
	add	edx, -0x57
	jmp	.label_371
.label_366:
	add	sil, 0xbf
	movzx	ecx, sil
	cmp	ecx, 6
	jae	.label_373
	add	edx, -0x37
	jmp	.label_371
.label_379:
	add	rbx, 4
.label_351:
	mov	rcx, rbx
	mov	byte ptr [r15], al
	jmp	.label_367
.label_373:
	add	edx, -0x30
.label_371:
	add	edx, eax
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_370
	add	rbx, 4
	mov	eax, edx
	jmp	.label_356
.label_370:
	movsx	eax, sil
	shl	edx, 4
	mov	cl, al
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 6
	jae	.label_358
	add	eax, -0x57
	jmp	.label_355
.label_358:
	add	sil, 0xbf
	movzx	ecx, sil
	cmp	ecx, 6
	jae	.label_360
	add	eax, -0x37
	jmp	.label_355
.label_360:
	add	eax, -0x30
.label_355:
	add	eax, edx
	add	rbx, 5
.label_356:
	mov	rcx, rbx
	mov	byte ptr [r15], al
	jmp	.label_367
	nop	word ptr cs:[rax + rax]
.label_364:
	lea	rcx, [rbx + 1]
	movzx	edx, al
	cmp	edx, 0x5c
	jne	.label_372
	mov	dl, byte ptr [rcx]
	movsx	eax, dl
	cmp	eax, 0x6d
	jg	.label_376
	lea	esi, [rax - 0x61]
	cmp	esi, 5
	ja	.label_365
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_378]]
.label_2980:
	mov	byte ptr [r15], 7
	jmp	.label_353
	nop	
.label_372:
	mov	byte ptr [r15], al
.label_367:
	inc	r15
	jmp	.label_357
	nop	dword ptr [rax + rax]
.label_376:
	add	eax, -0x6e
	cmp	eax, 0xa
	ja	.label_361
	jmp	qword ptr [word ptr [+ (rax * 8) + label_362]]
.label_2947:
	mov	byte ptr [r15], 0xa
	jmp	.label_353
.label_365:
	test	eax, eax
	je	.label_357
	cmp	eax, 0x30
	jne	.label_361
	movsx	eax, byte ptr [rbx + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	cmp	ecx, 0x30
	jne	.label_368
	add	eax, -0x30
	movsx	ecx, byte ptr [rbx + 3]
	mov	edx, ecx
	and	edx, 0xf8
	cmp	edx, 0x30
	jne	.label_374
	lea	eax, [rcx + rax*8 - 0x30]
	movsx	ecx, byte ptr [rbx + 4]
	mov	edx, ecx
	and	edx, 0xf8
	cmp	edx, 0x30
	jne	.label_379
	lea	eax, [rcx + rax*8 - 0x30]
	add	rbx, 5
	jmp	.label_351
.label_2981:
	mov	byte ptr [r15], 8
	jmp	.label_353
.label_2982:
	test	dl, dl
	je	.label_357
	inc	rbx
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_369:
	cmp	byte ptr [rcx + 1], 0
	lea	rcx, [rcx + 1]
	jne	.label_369
	jmp	.label_357
.label_2983:
	mov	byte ptr [r15], 0xc
	jmp	.label_353
.label_2948:
	mov	byte ptr [r15], 0xd
	jmp	.label_353
.label_2949:
	mov	byte ptr [r15], 9
	jmp	.label_353
.label_2950:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_353:
	inc	r15
	add	rbx, 2
	mov	rcx, rbx
	jmp	.label_357
.label_2951:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_352
	add	rbx, 2
	mov	word ptr [r15], 0x785c
	jmp	.label_377
.label_361:
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], al
.label_377:
	add	r15, 2
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	al, byte ptr [rcx]
	test	al, al
	mov	rbx, rcx
	jne	.label_364
.label_375:
	mov	byte ptr [r15], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

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
	jae	.label_386
	xor	edi, edi
	movabs	r12, 0x555555555555555
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_384:
	cmp	rbx, r13
	mov	rbp, rbx
	jae	.label_381
	nop	dword ptr [rax + rax]
.label_385:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0xa
	je	.label_390
	inc	rbp
	cmp	rbp, r13
	jb	.label_385
.label_390:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_382
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_387
	test	rdi, rdi
	je	.label_388
	cmp	rsi, r12
	jae	.label_389
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_391
	nop	word ptr [rax + rax]
.label_381:
	mov	rbp, rbx
	jmp	.label_382
.label_388:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_383
.label_391:
	mov	qword ptr [r14 + 8], rsi
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_387:
	mov	rax, rsi
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	mov	qword ptr [rdi + rax + 8], r15
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_382:
	lea	rbx, [rbp + 1]
	cmp	rbp, r13
	cmovae	rbx, rbp
	cmp	rbx, r13
	jb	.label_384
.label_386:
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
.label_389:
	call	xalloc_die
.label_383:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

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
	je	.label_392
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_392
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_395
	cmp	byte ptr [rbx + 1], 0
	je	.label_392
.label_395:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	read_file
	mov	qword ptr [r14], rax
	jmp	.label_394
.label_392:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsp + 8]
	call	fread_file
	mov	qword ptr [r14], rax
	mov	ebx, OFFSET FLAT:.str.21
.label_394:
	test	rax, rax
	je	.label_393
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_393:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

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
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	xor	ecx, ecx
	and	al, 1
	mov	eax, OFFSET FLAT:folded_chars
	cmovne	rcx, rax
	mov	qword ptr [rdi + 0x30], rcx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_396
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_396:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
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
	#Procedure 0x404ce0

	.globl compare_words
	.type compare_words, @function
compare_words:
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	je	.label_397
	test	rdx, rdx
	jle	.label_400
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_398:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	movzx	edi, byte ptr [rsi + rcx]
	movzx	edi,  byte ptr [byte ptr [rdi + folded_chars]]
	sub	eax, edi
	jne	.label_399
	inc	rcx
	cmp	rcx, rdx
	jl	.label_398
	jmp	.label_400
.label_397:
	test	rdx, rdx
	jle	.label_400
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_401:
	movzx	eax, byte ptr [r10 + rdi]
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_399
	inc	rdi
	cmp	rdi, rdx
	jl	.label_401
.label_400:
	cmp	r8, r9
	setg	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_399:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
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
	#Procedure 0x404db0

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	je	.label_406
	test	rdx, rdx
	jle	.label_403
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_407:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	movzx	ebx, byte ptr [r11 + rcx]
	movzx	ebx,  byte ptr [byte ptr [rbx + folded_chars]]
	sub	eax, ebx
	jne	.label_402
	inc	rcx
	cmp	rcx, rdx
	jl	.label_407
	jmp	.label_403
.label_406:
	test	rdx, rdx
	jle	.label_403
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_405:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_402
	inc	rcx
	cmp	rcx, rdx
	jl	.label_405
.label_403:
	cmp	r8, r9
	setg	cl
	mov	eax, 0xffffffff
	jl	.label_404
	movzx	eax, cl
.label_402:
	test	eax, eax
	jne	.label_404
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi]
	mov	eax, 0xffffffff
	cmp	rcx, rdx
	jb	.label_404
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_404:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl print_field
	.type print_field, @function
print_field:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_429
	mov	r12d, OFFSET FLAT:.str.77
	jmp	.label_410
.label_412:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.83
	call	fputs_unlocked
	jmp	.label_409
.label_422:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.85
	call	fputs_unlocked
	jmp	.label_409
.label_408:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_421
.label_431:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.75
	call	fputs_unlocked
	jmp	.label_409
.label_430:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.74
	call	fputs_unlocked
	jmp	.label_409
.label_413:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_409
.label_420:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_415
.label_424:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	bpl, byte ptr [r15]
	movzx	ebx, bpl
	cmp	byte ptr [byte ptr [rbx + edited_flag]],  0
	je	.label_421
	movsx	eax,  byte ptr [byte ptr [rbx + diacrit_diac]]
	test	eax, eax
	je	.label_423
	cmp	dword ptr [dword ptr [rip + output_format]],  3
	jne	.label_423
	dec	eax
	cmp	eax, 8
	ja	.label_409
	movsx	ecx,  byte ptr [byte ptr [rbx + diacrit_base]]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_426]]
.label_2953:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_417
	nop	
.label_423:
	cmp	ebx, 0x5b
	jg	.label_411
	lea	eax, [rbx - 0x23]
	cmp	eax, 4
	jb	.label_414
	cmp	ebx, 0x22
	jne	.label_416
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_420
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_415:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_424
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_409
.label_411:
	cmp	ebx, 0x7a
	jg	.label_427
	cmp	ebx, 0x5c
	je	.label_418
	cmp	ebx, 0x5f
	jne	.label_416
.label_414:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_408
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_421:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_419
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_409
.label_427:
	cmp	ebx, 0x7b
	je	.label_425
	cmp	ebx, 0x7d
	jne	.label_416
.label_425:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.86
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	jmp	.label_409
.label_2952:
	cmp	ecx, 0x60
	jg	.label_428
	cmp	ecx, 0x41
	je	.label_431
	cmp	ecx, 0x4f
	jne	.label_416
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.73
	call	fputs_unlocked
	jmp	.label_409
.label_2954:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_417
.label_2955:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.79
	jmp	.label_417
.label_2956:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.80
.label_417:
	xor	eax, eax
	call	__printf_chk
	jmp	.label_409
.label_2957:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.81
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_409
.label_2958:
	cmp	ecx, 0x41
	je	.label_412
	cmp	ecx, 0x61
	jne	.label_416
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	jmp	.label_409
.label_2959:
	cmp	ecx, 0x4f
	je	.label_422
	cmp	ecx, 0x6f
	jne	.label_416
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.84
	call	fputs_unlocked
	jmp	.label_409
.label_418:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.87
	call	fputs_unlocked
	jmp	.label_409
.label_419:
	mov	esi, ebx
	call	__overflow
	jmp	.label_409
.label_428:
	cmp	ecx, 0x61
	je	.label_430
	cmp	ecx, 0x6f
	jne	.label_416
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.72
	call	fputs_unlocked
	jmp	.label_409
.label_416:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_413
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_409:
	inc	r15
	cmp	r14, r15
	jne	.label_410
.label_429:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

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
	je	.label_435
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_432:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_433
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_437
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_438
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_434
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_433
.label_434:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_433
.label_438:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_433:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_432
	jmp	.label_436
.label_435:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_436:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_437:
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
	#Procedure 0x4052f0
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
	je	.label_439
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_440
.label_439:
	mov	esi, OFFSET FLAT:.str_2
.label_440:
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
	#Procedure 0x405360

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
	je	.label_445
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_442:
	test	r15, r15
	je	.label_444
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_441
.label_444:
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
	jmp	.label_443
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_443:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_442
.label_445:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_446
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
.label_446:
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
	#Procedure 0x405490

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
	jns	.label_447
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_448
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_449
.label_448:
	mov	esi, OFFSET FLAT:.str_2
.label_449:
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
.label_447:
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
	#Procedure 0x405550
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
	je	.label_450
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_450
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_451
.label_450:
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
	#Procedure 0x4055c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_453
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_452
	cmp	dword ptr [rbp], 0x20
	jne	.label_452
.label_453:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_455
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_454
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_455:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_454:
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
	#Procedure 0x4056a0

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
	je	.label_468
	cmp	eax, 1
	je	.label_456
	cmp	eax, 2
	je	.label_457
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_457:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_466
.label_468:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_458
.label_456:
	xor	r15d, r15d
.label_466:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_459
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_459
	mov	r13b, 1
	jmp	.label_461
.label_459:
	test	r12b, r12b
	je	.label_465
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_461
.label_465:
	test	r15b, r15b
	je	.label_458
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_461
.label_458:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_464
.label_461:
	xor	r14d, r14d
	test	eax, eax
	js	.label_464
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_464:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_460
	mov	edi, 2
	call	close
.label_460:
	test	r12b, r12b
	je	.label_463
	mov	edi, 1
	call	close
.label_463:
	test	r13b, r13b
	je	.label_467
	xor	edi, edi
	call	close
.label_467:
	test	r14, r14
	jne	.label_462
	mov	dword ptr [rbx], ebp
.label_462:
	mov	rax, r14
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
	#Procedure 0x4057e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_469
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_470
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_470
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_471
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_471:
	mov	rbx, r14
.label_470:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_469:
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
	#Procedure 0x405890
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
	je	.label_473
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_472
	mov	rbx, r14
	jmp	.label_473
.label_472:
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
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_473:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405910

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
	mov	qword ptr [rsp], rax
	cmp	byte ptr [rbp], 0
	je	.label_480
	lea	r12, [rsp + 0x48]
	lea	r15, [rsp + 8]
	nop	dword ptr [rax]
.label_486:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_480
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_491
	mov	qword ptr [rsp + 0x58], rbp
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_489
	nop	word ptr [rax + rax]
.label_482:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_478
	test	edi, edi
	je	.label_481
.label_478:
	mov	rcx, qword ptr [rsp + 0x58]
	add	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rsp + 0x54], 0
	cmp	rcx, rbx
	jb	.label_482
	test	al, al
	je	.label_489
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_489:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	jmp	.label_490
	nop	dword ptr [rax]
.label_488:
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
.label_490:
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_483
	shr	rax, 0x20
	je	.label_485
.label_483:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_488
	shr	rax, 0x20
	jne	.label_488
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_491:
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_474
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_474:
	mov	rdi, qword ptr [rsp]
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_484
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_484:
	mov	bpl, 1
	test	r14b, r13b
	jne	.label_479
	cmp	byte ptr [rbx], 0
	je	.label_480
	inc	rbx
	jmp	.label_487
	nop	
.label_485:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_475
	and	dl, cl
	mov	al, 1
	jne	.label_475
	call	iswalnum
	test	eax, eax
	sete	al
.label_475:
	test	r13b, r13b
	je	.label_476
	test	al, al
	jne	.label_479
.label_476:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_477
	shr	rax, 0x20
	je	.label_480
.label_477:
	add	rbx, qword ptr [rsp + 0x60]
.label_487:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	jne	.label_486
.label_480:
	xor	ebp, ebp
.label_479:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

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
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_500
	mov	qword ptr [rsp + 8], rbx
	mov	esi, OFFSET FLAT:.str.1_3
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
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_499
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_501
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_503
.label_500:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_505
.label_499:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	jmp	.label_503
.label_501:
	mov	qword ptr [rsp + 0x10], r13
.label_503:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 8]
.label_505:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_497
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_498
	test	r15, r15
	je	.label_496
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_498
.label_496:
	test	r13, r13
	je	.label_502
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_502
.label_498:
	test	rbp, rbp
	je	.label_504
	mov	rdi, rbp
	call	free
.label_504:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_493
	call	free
	jmp	.label_493
.label_497:
	test	rbp, rbp
	je	.label_494
	cmp	rbp, r14
	je	.label_494
	mov	rdi, rbp
	call	free
.label_494:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_495
	cmp	rdi, r14
	je	.label_495
	call	free
.label_495:
	mov	rbx, r14
	jmp	.label_493
.label_502:
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
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
	test	rbp, rbp
	je	.label_492
	mov	rdi, rbp
	call	free
.label_492:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_493
	call	free
.label_493:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dc0
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
	#Procedure 0x405e00
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
	#Procedure 0x405e10
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
	#Procedure 0x405e20
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
	#Procedure 0x405e60
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
	#Procedure 0x405e80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_506
	test	rdx, rdx
	je	.label_506
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_506:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0
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
	#Procedure 0x405f30

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
.label_568:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_628
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_507]]
.label_2792:
	mov	edi, OFFSET FLAT:.str.11
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
.label_2793:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_527
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_527
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_553:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_623
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_623:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_553
.label_527:
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
	jmp	.label_563
.label_2785:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_563
.label_2788:
	mov	al, 1
.label_2786:
	mov	r12b, 1
.label_2789:
	test	r12b, 1
	mov	cl, 1
	je	.label_585
	mov	cl, al
.label_585:
	mov	al, cl
.label_2787:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_589
	test	r10, r10
	je	.label_594
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_535
.label_589:
	xor	ecx, ecx
	jmp	.label_535
.label_2790:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_600
	test	r10, r10
	je	.label_605
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_609
.label_2791:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_563
.label_594:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_535:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_563
.label_600:
	xor	eax, eax
	jmp	.label_609
.label_605:
	mov	eax, 1
.label_609:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_563:
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
	jmp	.label_582
.label_566:
	inc	rdi
.label_582:
	cmp	rbp, -1
	je	.label_559
	cmp	rdi, rbp
	jne	.label_561
	jmp	.label_562
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_614
.label_561:
	test	r12b, r12b
	je	.label_571
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_574
	cmp	rbp, -1
	jne	.label_574
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
.label_574:
	cmp	rbx, rbp
	jbe	.label_598
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_599
	nop	word ptr [rax + rax]
.label_571:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_599
.label_598:
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
	jne	.label_624
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_599
	jmp	.label_543
.label_624:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_599:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_558
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_522]]
.label_2967:
	test	rdi, rdi
	jne	.label_509
	jmp	.label_529
.label_2971:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_532
	test	rdi, rdi
	jne	.label_536
	cmp	rbp, 1
	je	.label_529
	xor	r13d, r13d
	jmp	.label_534
.label_2960:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_542
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_543
	cmp	r9d, 2
	jne	.label_546
	mov	al, r14b
	and	al, 1
	jne	.label_548
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_551
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_551:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_573
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_573:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_617
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_617:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_538
.label_2961:
	mov	bl, 0x62
	jmp	.label_583
.label_2962:
	mov	cl, 0x74
	jmp	.label_570
.label_2963:
	mov	bl, 0x76
	jmp	.label_583
.label_2964:
	mov	bl, 0x66
	jmp	.label_583
.label_2965:
	mov	cl, 0x72
	jmp	.label_570
.label_2968:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_591
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_595
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
	jae	.label_537
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_537:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_619
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_619:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_625
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_625:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_591:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_534
.label_2969:
	cmp	r9d, 5
	je	.label_629
	cmp	r9d, 2
	jne	.label_509
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_509
	jmp	.label_514
.label_2970:
	cmp	r9d, 2
	jne	.label_516
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_518
	jmp	.label_523
.label_558:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_524
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
.label_525:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_544
	test	cl, cl
	je	.label_544
	xor	eax, eax
	jmp	.label_534
.label_532:
	test	rdi, rdi
	jne	.label_556
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_556
.label_529:
	mov	dl, 1
.label_2966:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_576
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_534
.label_542:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_566
	jmp	.label_509
.label_516:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_570
.label_518:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_508
.label_570:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_578
.label_583:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_534
	jmp	.label_587
.label_524:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_588
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_588:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_606:
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
	je	.label_618
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_622
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_626
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_528
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_515:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_511
	bt	rsi, rdx
	jb	.label_512
.label_511:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_515
.label_528:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_539
	xor	r13d, r13d
.label_539:
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
	je	.label_606
	jmp	.label_525
.label_556:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_534
.label_629:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_509
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_509
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_509
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_549
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_554
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_567
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_590
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_590:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_569
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_569:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_580
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_580:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_627
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_627:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_534
.label_509:
	xor	eax, eax
	xor	r13d, r13d
.label_534:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_602
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_604
	jmp	.label_610
	nop	word ptr [rax + rax]
.label_602:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_610
.label_604:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_613
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_620
	nop	word ptr cs:[rax + rax]
.label_610:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_620:
	mov	bl, r15b
	je	.label_508
	jmp	.label_587
.label_613:
	mov	bl, r15b
.label_587:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_543
	cmp	r9d, 2
	jne	.label_631
	mov	al, r14b
	and	al, 1
	jne	.label_631
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_612
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_612:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_579
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_579:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_521
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_521:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_631:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_533
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_533:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_577
.label_536:
	xor	r13d, r13d
	jmp	.label_534
.label_544:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_545
	nop	word ptr [rax + rax]
.label_540:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_545:
	test	cl, cl
	je	.label_555
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_557
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_560
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_560:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_557
	nop	word ptr [rax + rax]
.label_555:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_543
	cmp	r9d, 2
	jne	.label_581
	mov	al, r14b
	and	al, 1
	jne	.label_581
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_584
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_584:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_630
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_630:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_531
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_531:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_581:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_611
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_611:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_616
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_616:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_565
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_565:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_557:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_508
	test	r14b, 1
	je	.label_513
	mov	bl, al
	and	bl, 1
	jne	.label_513
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_621
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_621:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_526
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_526:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_513:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_540
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_540
	nop	dword ptr [rax]
.label_508:
	test	r14b, 1
	je	.label_550
	and	al, 1
	jne	.label_550
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_530
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_530:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_552
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_552:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_550:
	mov	bl, r15b
.label_577:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_572
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_572:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_566
.label_546:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_538
.label_548:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_538:
	cmp	rcx, r10
	jae	.label_592
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_592:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_597
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_603
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_607
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_593
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_593:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_615
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_615:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_534
.label_597:
	xor	r13d, r13d
	jmp	.label_534
.label_603:
	xor	r13d, r13d
	jmp	.label_534
.label_607:
	xor	r13d, r13d
	jmp	.label_534
.label_622:
	xor	r13d, r13d
.label_618:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_525
.label_626:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_510
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_586:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_517
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_586
	xor	r13d, r13d
	jmp	.label_525
.label_510:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_525
.label_517:
	xor	r13d, r13d
	jmp	.label_525
.label_549:
	xor	r13d, r13d
	jmp	.label_534
.label_554:
	xor	r13d, r13d
	jmp	.label_534
	nop	dword ptr [rax]
.label_562:
	mov	r13, rdi
.label_614:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_541
	or	al, dl
	je	.label_520
.label_541:
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
	je	.label_547
	or	al, dl
	jne	.label_547
	test	r8b, 1
	jne	.label_564
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_547
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_568
.label_547:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_575
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_575
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_575
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_596:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_608
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_608:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_596
.label_575:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_601
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_601
.label_576:
	mov	r9d, 2
	jmp	.label_543
.label_512:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_543
.label_520:
	mov	rbp, r13
	jmp	.label_543
.label_578:
	mov	r9d, 2
.label_543:
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
.label_519:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_601:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_564:
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
	jmp	.label_519
.label_595:
	mov	r9d, 2
	jmp	.label_543
.label_523:
	mov	r9d, 2
	jmp	.label_543
.label_514:
	mov	r9d, 2
	jmp	.label_543
.label_567:
	mov	r9d, 5
	jmp	.label_543
.label_628:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0
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
	#Procedure 0x407190
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
	je	.label_632
	mov	qword ptr [rax], rbx
.label_632:
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
	#Procedure 0x407290
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_633
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_635:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_635
.label_633:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_636
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_637]], OFFSET FLAT:slot0
.label_636:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_634
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_634:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407330
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407340

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
	js	.label_638
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_641
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_644
.label_641:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_640
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
	jne	.label_639
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_639:
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
.label_644:
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
	ja	.label_642
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_643
	mov	rdi, rbx
	call	free
.label_643:
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
.label_642:
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
.label_638:
	call	abort
.label_640:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520
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
	#Procedure 0x407540
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
	#Procedure 0x407560

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
	je	.label_645
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
.label_645:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075d0
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
	je	.label_646
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
.label_646:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407640
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
	je	.label_647
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
.label_647:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0
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
	je	.label_648
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
.label_648:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x407790
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x407800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x407860
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x4078c0

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
	je	.label_652
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
.label_652:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407970
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_653
	test	rdx, rdx
	je	.label_653
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_653:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4079e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_654
	test	rdx, rdx
	je	.label_654
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_654:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_655
	test	rsi, rsi
	je	.label_655
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_655:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407ac0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_656
	test	rsi, rsi
	je	.label_656
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
.label_656:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b40
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
	#Procedure 0x407b60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b80

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
	#Procedure 0x407ba0

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
	jne	.label_657
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_659
	cmp	ecx, 0x55
	jne	.label_658
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_658
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_658
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_658
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_658
	cmp	byte ptr [rax + 5], 0
	jne	.label_658
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_657
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_657
.label_659:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_658
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_658
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_658
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_658
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_658
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_658
	cmp	byte ptr [rax + 7], 0
	je	.label_660
.label_658:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_657:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_660:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_657
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_657
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90

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
	mov	rbp, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebx, 0x2000
	test	eax, eax
	js	.label_665
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebx, 0x2000
	cmp	eax, 0x8000
	jne	.label_665
	mov	rdi, r15
	call	ftello
	mov	ebx, 0x2000
	test	rax, rax
	js	.label_665
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_665
	cmp	rcx, -1
	je	.label_669
	inc	rcx
	mov	rbx, rcx
.label_665:
	mov	rdi, rbx
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_663
	mov	qword ptr [rsp], rbp
	mov	r14, -1
	nop	dword ptr [rax + rax]
.label_667:
	mov	r12, rax
	mov	rbp, rbx
	sub	rbp, r13
	lea	rdi, [r12 + r13]
	mov	esi, 1
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r13, rax
	cmp	rax, rbp
	jne	.label_661
	cmp	rbx, -1
	je	.label_664
	mov	rbp, rbx
	shr	rbp, 1
	mov	rax, rbp
	not	rax
	add	rbp, rbx
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	mov	rbx, rbp
	jne	.label_667
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	jmp	.label_666
.label_661:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_666
	dec	rbx
	cmp	r13, rbx
	jae	.label_668
	lea	rsi, [r13 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_668:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r13], 0
	mov	qword ptr [rax], r13
	mov	r13, r12
	jmp	.label_663
.label_664:
	mov	r14d, 0xc
	call	__errno_location
	mov	rbp, rax
.label_666:
	mov	rdi, r12
	call	free
	mov	dword ptr [rbp], r14d
.label_662:
	xor	r13d, r13d
.label_663:
	mov	rax, r13
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_669:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_662
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:.str_7
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_670
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
	je	.label_670
	test	r15, r15
	je	.label_671
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_671:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_670:
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
	#Procedure 0x407e90
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:.str.1_4
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_672
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
	je	.label_672
	test	r15, r15
	je	.label_673
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_673:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_672:
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
	#Procedure 0x407f00

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
	je	.label_681
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_684
	test	r14d, r14d
	je	.label_685
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
	jle	.label_688
	lea	rbp, [rsp + 8]
	nop	
.label_690:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_687
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_687
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_690
.label_687:
	mov	rbp, qword ptr [rsp + 0x20]
.label_688:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_674
.label_685:
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
	jle	.label_674
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_689:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_682
	test	ebp, ebp
	jne	.label_683
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_675
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_686
	xor	ebp, ebp
	jmp	.label_675
	nop	dword ptr [rax + rax]
.label_682:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_675
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_675
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_677
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_677
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_675
	nop	
.label_683:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_677
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_675
	jmp	.label_677
.label_686:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_675
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_675
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	ebp, 1
.label_675:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_689
	cmp	ebp, 2
	jne	.label_674
	mov	byte ptr [r15], 0
	jmp	.label_674
.label_684:
	test	r14d, r14d
	je	.label_676
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_679
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_678:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_679
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_678
.label_679:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_674
.label_676:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_674
	call	__ctype_b_loc
	nop	dword ptr [rax + rax]
.label_680:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_674
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_680
.label_674:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_681:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081b0

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
	je	.label_697
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_696
.label_697:
	mov	edx, OFFSET FLAT:.str.1_5
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_696:
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
	ja	.label_692
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_693]]
.label_2938:
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
.label_692:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_691
.label_2939:
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
.label_2940:
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
.label_2941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_698
.label_2942:
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
	jmp	.label_700
.label_2943:
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
	jmp	.label_695
.label_2944:
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
.label_695:
	mov	qword ptr [rsp + 0x10], rdi
.label_700:
	mov	qword ptr [rsp + 8], rsi
.label_698:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_699
.label_2946:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_691:
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
	jmp	.label_694
.label_2945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_694:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_699:
	call	__fprintf_chk
.label_2937:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_701:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_701
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_704:
	cmp	r10d, 0x28
	ja	.label_702
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_703
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_703:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_705
	inc	r9
	cmp	r9, 0xa
	jb	.label_704
.label_705:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_706
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_706:
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
.label_710:
	cmp	r8d, 0x28
	ja	.label_707
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_709
	nop	
.label_707:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_709:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_708
	inc	r9
	cmp	r9, 0xa
	jb	.label_710
.label_708:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408630
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
	#Procedure 0x4086b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_711
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_712
	test	rax, rax
	je	.label_711
.label_712:
	pop	rbx
	ret	
.label_711:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_713
	test	rax, rax
	je	.label_714
.label_713:
	pop	rbx
	ret	
.label_714:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408710
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_715
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_716
	test	rbx, rbx
	jne	.label_716
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_716:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_717
	test	rax, rax
	je	.label_715
.label_717:
	pop	rbx
	ret	
.label_715:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_718
	test	rbx, rbx
	jne	.label_718
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_718:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_720
	test	rax, rax
	je	.label_719
.label_720:
	pop	rbx
	ret	
.label_719:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408790
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_725
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_726
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_721
.label_725:
	test	rcx, rcx
	jne	.label_727
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_727:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_723
.label_721:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_722
	test	rbx, rbx
	jne	.label_722
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_722:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_724
	test	rax, rax
	je	.label_726
.label_724:
	pop	rbx
	ret	
.label_726:
	call	xalloc_die
.label_723:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408830
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_728
	test	rax, rax
	je	.label_729
.label_728:
	pop	rbx
	ret	
.label_729:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408850
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_732
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_734
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_731
	call	free
	xor	eax, eax
	jmp	.label_733
.label_732:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_730
	mov	qword ptr [rsi], rbx
.label_731:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_733
	test	rax, rax
	je	.label_730
.label_733:
	pop	rbx
	ret	
.label_730:
	call	xalloc_die
.label_734:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088c0
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
	je	.label_736
	test	r14, r14
	je	.label_735
.label_736:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_735:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408900
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_737
	call	rpl_calloc
	test	rax, rax
	je	.label_737
	pop	rcx
	ret	
.label_737:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408930

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
	je	.label_738
	test	r15, r15
	je	.label_739
.label_738:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_739:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408970
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
	je	.label_741
	test	r15, r15
	je	.label_740
.label_741:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_740:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_6
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
	#Procedure 0x4089f0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_743
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_742
.label_743:
	mov	eax, ebx
	pop	rbx
	ret	
.label_742:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a10
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_745
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_744
.label_745:
	mov	rax, rbx
	pop	rbx
	ret	
.label_744:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_747
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_746
.label_747:
	mov	rax, rbx
	pop	rbx
	ret	
.label_746:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
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
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_785
	test	rsi, rsi
	lea	rbx, [rsp + 0x20]
	cmovne	rbx, rsi
	mov	qword ptr [rsp + 0x10], rbx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, rbx
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	rcx, qword ptr [rbx]
	cmp	rcx, r12
	je	.label_786
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_797
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_749
	mov	r13d, 1
.label_797:
	test	r14, r14
	je	.label_803
	mov	r12d, r13d
	jmp	.label_806
.label_786:
	mov	r13d, 4
	test	r14, r14
	je	.label_749
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_749
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_749
.label_806:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_767
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_766
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_760
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_760
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_760
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_788
	cmp	eax, 0x44
	je	.label_788
	cmp	eax, 0x69
	jne	.label_760
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_795
	mov	r15d, 1
.label_795:
	mov	r8d, 0x400
	jmp	.label_760
.label_803:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_749
.label_767:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_789
.label_788:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_760:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_752
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_756
	jmp	qword ptr [word ptr [+ (rax * 8) + label_762]]
.label_2848:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_765
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_770
.label_752:
	cmp	r13d, 0x73
	jg	.label_775
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_777
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_780]]
.label_2871:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_765
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_770
.label_756:
	cmp	r13d, 0x54
	je	.label_761
	cmp	r13d, 0x59
	jne	.label_766
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_792
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_792:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_805
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_805:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_755
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_755:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_773
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_773:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_759
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_759:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_768
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_768:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_796
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_796:
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_748
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_748:
	or	ebx, edi
	jmp	.label_757
.label_775:
	cmp	r13d, 0x74
	je	.label_761
	cmp	r13d, 0x77
	jne	.label_766
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_769
.label_765:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_757
.label_2850:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_772
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_772:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_784
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_784:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_794
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_794:
	or	ebx, r10d
	jmp	.label_757
.label_2851:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_757
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_757
.label_2852:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_764
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_764:
	cmp	rcx, rdi
	jl	.label_779
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_779:
	or	ebx, r10d
	jmp	.label_757
.label_761:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_782
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_782:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_800
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_800:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_802
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_802:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_763
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_763:
	or	ebx, edi
	jmp	.label_757
.label_777:
	cmp	r13d, 0x5a
	jne	.label_766
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_776
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_776:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_783
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_783:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_781
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_781:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_758
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_758:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_754
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_754:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_771
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_771:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_750
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_750:
	or	ebx, edi
	jmp	.label_757
.label_766:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_749
.label_2849:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_791
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_791:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_804
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_804:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_753
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_753:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_793
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_793:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_790
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_790:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_787
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_787:
	or	ebx, r14d
	jmp	.label_757
.label_2853:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_798
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_798:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_751
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_751:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_799
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_799:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_778
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_778:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_774
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_774:
	or	ebx, r11d
	jmp	.label_757
.label_769:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_770:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_757:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_801
	or	ebx, 2
.label_801:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_789:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_749:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_785:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x409430

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_807
	test	rsi, rsi
	mov	ecx, 1
	je	.label_808
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_808
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_807:
	mov	ecx, 1
.label_808:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409480

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_809
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_811
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_809
.label_811:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_809
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_810
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_810:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_809:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409500

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_812
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_812
	test	byte ptr [rbx + 1], 1
	je	.label_812
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_812:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409540

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
	je	.label_813
	test	rbx, rbx
	je	.label_813
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_813
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_813
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_814
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_813
.label_814:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_813:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095e0

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
	jne	.label_815
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_815
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_816
.label_815:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_816:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_817
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_817:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409650

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
	je	.label_818
	cmp	r15, -2
	jb	.label_818
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_818
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_818:
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
	#Procedure 0x4096b0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_819
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_819:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_945
.label_920:
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
	ja	.label_873
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_833:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_833
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
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_845
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_845
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_845
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_845
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_845
	or	byte ptr [r12 + 0xb0], 4
.label_845:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_860
	test	al, 4
	jne	.label_868
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_873
	xor	ebp, ebp
	nop	
.label_829:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_875
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_875:
	cmp	ebx, 0x7f
	ja	.label_880
	cmp	ebx, eax
	je	.label_880
	or	byte ptr [r12 + 0xb0], 8
.label_880:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_829
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_891:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_848
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_848:
	cmp	r15d, eax
	je	.label_923
	or	byte ptr [r12 + 0xb0], 8
.label_923:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_891
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_905:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_900
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_900:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_905
	nop	dword ptr [rax]
.label_913:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_908
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_908:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_913
	jmp	.label_860
.label_868:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_860:
	cmp	qword ptr [r12], 0
	je	.label_873
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_873
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_918
	cmp	edx, 2
	jl	.label_951
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_825
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_825
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_951:
	xor	eax, eax
	test	bpl, bpl
	je	.label_964
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_825
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_964:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_968
.label_873:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_914
.label_918:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_968:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_976
	cmp	ecx, 2
	jl	.label_820
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_825
	lea	r14, [rsp + 0x30]
.label_889:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_831
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_831
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_838
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_825
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_825
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_838
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_825
	mov	qword ptr [rsp + 0x48], rax
.label_838:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_835
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_825
	mov	qword ptr [rsp + 0x38], rax
.label_835:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_889
.label_825:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_822
.label_976:
	cmp	ecx, 2
	jl	.label_872
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_831
.label_820:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_874
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_879
	nop	word ptr cs:[rax + rax]
.label_881:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_879:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_883
.label_893:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_884
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_884:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_881
	jmp	.label_892
.label_883:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_893
.label_872:
	test	rbx, rbx
	je	.label_896
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_897
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_897
	nop	dword ptr [rax + rax]
.label_954:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_954
	mov	rcx, rdi
.label_897:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_831
.label_945:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_914
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_920
.label_892:
	mov	rax, r13
.label_874:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_921
.label_896:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_921:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_831:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_938
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_939
.label_938:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_941
	mov	rax, qword ptr [rbx + 0x70]
.label_970:
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
.label_969:
	test	r14, r14
	mov	rcx, rbp
	je	.label_953
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_955
	mov	rax, qword ptr [rbx + 0x70]
.label_827:
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
	je	.label_824
	mov	qword ptr [rbp], rcx
.label_953:
	test	rbp, rbp
	je	.label_824
	test	rcx, rcx
	je	.label_824
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_823
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_854
	test	rax, rax
	je	.label_826
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_830
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_837
	test	rbx, rbx
	je	.label_840
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_834
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_834
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_852
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_844]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_852:
	test	rbx, rbx
	je	.label_865
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_844]]
.label_871:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_871
.label_865:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_840
	nop	dword ptr [rax + rax]
.label_834:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_834
.label_840:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_886
.label_898:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_887
	nop	dword ptr [rax]
.label_894:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_890
	test	rbp, rbp
	jne	.label_887
.label_890:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_894
	jmp	.label_886
.label_887:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_898
.label_886:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_901
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_960:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_901
	inc	rcx
	cmp	rcx, rax
	jb	.label_960
.label_901:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_912
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_912
.label_823:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_854:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_837:
	lea	r14, [r15 + 0x68]
.label_912:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_922:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_922
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_922
	jmp	.label_924
	nop	dword ptr [rax]
.label_943:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_924:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_927
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_927
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_927
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_927:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_932
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_932
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_932
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_932:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_876
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_942
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_943
	test	rax, rax
	je	.label_943
	jmp	.label_922
.label_942:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_947:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_947
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_947
.label_904:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_950
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_952
.label_950:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_958
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_952
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_952:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_966
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_904
	test	rax, rax
	mov	rbp, rcx
	je	.label_904
	jmp	.label_947
.label_941:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_969
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_970
.label_966:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_975
	cmp	eax, 0xb
	jne	.label_973
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_846
.label_958:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_955:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_824
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_827
.label_824:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_939:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_836
.label_975:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_839
.label_973:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_841
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_841:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_846
.label_839:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_846:
	mov	rdx, rbx
	jmp	.label_850
.label_864:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_850:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_857
	nop	
.label_861:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_859
	test	rcx, rcx
	jne	.label_857
.label_859:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_861
	jmp	.label_863
.label_857:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_864
	cmp	eax, 0xb
	jne	.label_867
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_850
.label_867:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_869
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_869:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_850
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_850
.label_863:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_876
.label_885:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_878
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_974
	test	rbp, rbp
	jne	.label_878
.label_974:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_882
	jmp	.label_971
.label_878:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_885
	jmp	.label_876
.label_971:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_888
	nop	word ptr cs:[rax + rax]
.label_902:
	inc	rbp
	mov	rax, rbp
.label_888:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_895
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_957
	jmp	.label_899
.label_895:
	mov	rbp, rax
.label_957:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_902
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_876
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_902
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_902
.label_876:
	mov	dword ptr [rsp + 0xcc], eax
.label_822:
	mov	r15, qword ptr [rsp + 0x28]
.label_836:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_915
.label_917:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_917
.label_915:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_926
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_926:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_853:
	mov	eax, dword ptr [rsp + 0xcc]
.label_914:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_899:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_931
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_931
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_935
.label_931:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_937
.label_935:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_849
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_937
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_944
.label_948:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_948
.label_944:
	test	rax, rax
	je	.label_937
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_821:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_956
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_949:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_965
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_903
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_933
.label_965:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_933:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_949
	mov	rax, qword ptr [r15 + 0x10]
.label_956:
	inc	r10
	cmp	r10, rax
	jb	.label_821
.label_937:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_828
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_828
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_828
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_907
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_862:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_842
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_847]]
.label_2975:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_910
	mov	sil, r10b
.label_910:
	mov	r10b, sil
	jmp	.label_851
.label_2976:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_828
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_851
	jmp	.label_828
.label_2977:
	mov	r9b, 1
	jmp	.label_851
.label_2978:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_858
	bt	r8, rdi
	jb	.label_851
.label_858:
	cmp	esi, 0x80
	jne	.label_828
.label_851:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_862
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_866
	jmp	.label_870
.label_826:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_830:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_855:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_870:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_940
	cmp	edi, 1
	jne	.label_877
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_877
	and	eax, 0xffdfffff
	jmp	.label_962
.label_940:
	and	eax, 0xffffff00
	or	eax, 7
.label_962:
	mov	dword ptr [rbx + rsi], eax
.label_877:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_855
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_866
.label_903:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_907:
	xor	ecx, ecx
.label_866:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_828:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_911
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_909
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_916
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_916
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_919
.label_946:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_919:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_906
	test	r15, r15
	mov	edi, 0
	jle	.label_925
	add	rsi, rdx
	xor	edi, edi
.label_929:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_928
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_925
.label_928:
	inc	rdi
	cmp	rdi, r15
	jl	.label_929
.label_925:
	cmp	rdi, r15
	je	.label_906
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_930
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_934
.label_936:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_936
.label_934:
	cmp	rdx, -1
	je	.label_930
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_906
.label_930:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_856
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_906:
	inc	rax
	cmp	rax, r15
	jl	.label_946
	jmp	.label_916
.label_911:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_916:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_959
	cmp	byte ptr [rax + 0x68], 0
	js	.label_961
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_963
.label_961:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
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
	je	.label_972
	test	rax, rax
	je	.label_972
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_972
.label_963:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_856:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_967
.label_832:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_832
.label_967:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_843
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_843:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_914
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_853
.label_972:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_856
.label_849:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_822
.label_959:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_856
.label_909:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_856
.label_842:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad10
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ad20

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
	je	.label_978
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_978:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_977
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_977:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_979
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_979:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_1006
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_987
.label_1006:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_987:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_990
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1004:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_1016
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_999
	cmp	ebx, 3
	jne	.label_1002
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1014:
	bt	rbp, rbx
	jae	.label_1005
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1005
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_988
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1011
.label_988:
	mov	eax, ebx
.label_1011:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1005:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1014
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_989:
	bt	rbp, rbx
	jae	.label_1017
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1017
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_981
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_984
.label_981:
	lea	rax, [rbx + 0x40]
.label_984:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1017:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_989
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_994:
	bt	rbp, rbx
	jae	.label_992
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_992
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_995
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1013
.label_995:
	lea	rax, [rbx + 0x80]
.label_1013:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_992:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_994
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1008:
	bt	rbp, rbx
	jae	.label_1010
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_1010
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1012
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1015
.label_1012:
	lea	rax, [rbx + 0xc0]
.label_1015:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1010:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1008
	jmp	.label_1003
	nop	
.label_999:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_980
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_985
	test	byte ptr [r12 + 0x20], 1
	jne	.label_985
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_980
.label_985:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_1000:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_996
	mov	byte ptr [r15 + rcx], 1
.label_996:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_1000
	jmp	.label_1003
	nop	
.label_1016:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_993
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1007
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1007:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_993:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1003
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1003
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_983
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_997:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_983
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_997
.label_983:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_998
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_998
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_998:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1003
	nop	dword ptr [rax]
.label_1002:
	cmp	ebx, 2
	je	.label_1009
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_1003
	jmp	.label_1009
.label_980:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1003
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1001:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_982
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_982
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_986
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_986:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_982:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_991
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_991
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_991
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_991:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1001
	nop	
.label_1003:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1004
.label_990:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1009:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_990
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_990
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2e0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
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
	je	.label_1018
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1020
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1021
.label_1020:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1021:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
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
	jne	.label_1019
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1018:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1019:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1018
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3d0
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
	jae	.label_1022
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1024
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1025
.label_1023:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1024:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1025:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1023
.label_1022:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b450
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1026
	call	free_dfa_content
.label_1026:
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
	#Procedure 0x40b490

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
	je	.label_1029
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1029
	mov	ebp, 0x400ff
	jmp	.label_1034
	nop	dword ptr [rax]
.label_1031:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1034:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1036
	cmp	ecx, 6
	jne	.label_1039
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
	jmp	.label_1044
	nop	word ptr cs:[rax + rax]
.label_1036:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1044:
	call	free
.label_1039:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1031
.label_1029:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1033
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1027:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1038
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1038:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1041
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1041:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1042
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1042:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1027
	jmp	.label_1030
.label_1033:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1030:
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
	je	.label_1035
	xor	r15d, r15d
	jmp	.label_1037
.label_1028:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1037:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1040
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1043:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1043
.label_1040:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1028
	mov	rdi, qword ptr [r14 + 0x40]
.label_1035:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1032
	call	free
.label_1032:
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
	#Procedure 0x40b660
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_1045
	test	bpl, 4
	jne	.label_1047
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1046
.label_1047:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1046:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_1048
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_1049
.label_1048:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_1049:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1045:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b700

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1194
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_1194:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1054
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_1054
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1054
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_1056
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_1056
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1060
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_1059
.label_1056:
	mov	eax, 1
	jmp	.label_1054
.label_1060:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_1070
	mov	rcx, r8
.label_1059:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_1074
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_1074:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_1083
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_1063
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1063
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_1083:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_1135
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1063
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_1135:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_1150
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_1150:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_1163
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1063
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_1053
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1063
.label_1163:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_1058
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1058
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_1210
.label_1058:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_1063
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_1063
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_1210:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_1226
	cmp	edi, 1
	je	.label_1061
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_1062
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1062
.label_1061:
	mov	eax, 4
.label_1062:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_1226:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_1077
.label_1199:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_1091
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_1091
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_1096
.label_1091:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1100
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_1113
.label_1100:
	test	r14, r14
	jle	.label_1118
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_1120
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_1122
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_1128:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1103
	dec	rcx
	jg	.label_1128
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1129
.label_1122:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_1133
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1113
	jmp	.label_1071
.label_1103:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1140
.label_1169:
	cmp	ebp, 0xa
	jne	.label_1113
.label_1071:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1129
	xor	ecx, ecx
	jmp	.label_1129
.label_1118:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_1129
.label_1120:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_1129:
	test	cl, 1
	jne	.label_1133
	test	ecx, ecx
	je	.label_1113
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_1155
	test	sil, sil
	jne	.label_1155
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1113
.label_1155:
	test	edx, edx
	jne	.label_1160
	test	eax, eax
	je	.label_1113
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1113
.label_1160:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1113
.label_1140:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_1133
	test	eax, eax
	je	.label_1169
.label_1133:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1113:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_1170
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_1209
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_1181
.label_1209:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_1187
.label_1193:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_1174:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_1151
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_1190
.label_1114:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1198
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_1072
.label_1124:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_1203
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_1055
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1211
	mov	rcx, qword ptr [rsp + 0x100]
.label_1216:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1215
	dec	rax
	jg	.label_1216
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1055
.label_1131:
	cmp	r14, rbx
	je	.label_1219
	mov	dword ptr [rsp + 0x90], 0
.label_1219:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_1221
.label_1211:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1055
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1055
	jmp	.label_1050
.label_1215:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1052
.label_1092:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_1055
.label_1050:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1055
	xor	ecx, ecx
	jmp	.label_1055
.label_1125:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_1068
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_1152
	jmp	.label_1086
.label_1172:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1195
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_1065
	jmp	.label_1126
.label_1068:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_1086
.label_1195:
	lea	rdi, [rsp + 0x238]
	jmp	.label_1126
.label_1072:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_1064
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_1057
	test	rcx, rcx
	js	.label_1180
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_1101
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1105
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_1110:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_1108
	dec	rdx
	test	rdx, rdx
	jg	.label_1110
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_1112
.label_1105:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_1116
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_1086
.label_1108:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_1125
.label_1152:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_1127
	jmp	.label_1112
.label_1116:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1112
.label_1127:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1112
	xor	edi, edi
	jmp	.label_1112
.label_1180:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_1112
.label_1101:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_1112:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_1137
	test	eax, eax
	mov	eax, r8d
	je	.label_1064
	jmp	.label_1086
.label_1137:
	mov	eax, r8d
.label_1086:
	test	ah, 8
	je	.label_1143
	test	dl, dl
	je	.label_1064
.label_1143:
	test	ah, 0x20
	je	.label_1147
	mov	eax, edi
	and	eax, 2
	je	.label_1064
.label_1147:
	test	r12b, r12b
	jns	.label_1057
	and	edi, 8
	je	.label_1064
.label_1057:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_1064
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_1157
	cmp	rcx, rax
	jl	.label_1166
.label_1157:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_1168
	cmp	rcx, rax
	jge	.label_1168
.label_1166:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_1173
.label_1168:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_1176
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_1176:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_1188
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_1164
	jmp	.label_1069
.label_1188:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_1164:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_1171
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_1115
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1207
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_1099:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_1212
	dec	rcx
	jg	.label_1099
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1126
.label_1207:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1126
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1126
	jmp	.label_1225
.label_1212:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1172
.label_1065:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_1126
.label_1225:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1126
	xor	ecx, ecx
	jmp	.label_1126
.label_1171:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_1126
.label_1115:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_1126:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1085
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_1085:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_1064
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_1069
.label_1064:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_1072
.label_1198:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1075
.label_1203:
	mov	ecx, dword ptr [rsp + 0x160]
.label_1055:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1081
.label_1173:
	mov	dword ptr [rsp + 0x238], eax
.label_1069:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1081
.label_1052:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1055
	test	eax, eax
	je	.label_1092
	jmp	.label_1055
.label_1190:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_1095
	cmp	rcx, rax
	jl	.label_1148
.label_1095:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_1104
	cmp	rcx, rax
	jge	.label_1104
.label_1148:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1109
.label_1104:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1114
.label_1075:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_1130:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1123
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_1124
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_1130
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_1081
.label_1123:
	mov	rbx, qword ptr [rax + rbp*8]
.label_1081:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_1134
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1134:
	test	rbx, rbx
	jne	.label_1141
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_1053
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_1144
	jmp	.label_1151
.label_1167:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_1144:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_1159:
	cmp	rdx, rcx
	jge	.label_1151
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1159
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1161
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_1167
.label_1161:
	test	rbx, rbx
	je	.label_1151
.label_1141:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_1131
	mov	r14, qword ptr [rsp + 0xa8]
.label_1221:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_1175
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_1178
.label_1175:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_1183
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1183
	mov	qword ptr [rsp + 0xa8], r14
.label_1178:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_1190
	jmp	.label_1151
.label_1183:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_1174
	jmp	.label_1094
.label_1151:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_1196
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_1094
.label_1196:
	mov	rbp, r15
.label_1094:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_1090
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_1063
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_1206
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_1223
.label_1206:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_1089
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_1231
.label_1223:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_1232
.label_1231:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_1089
.label_1232:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_1053
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_1067
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1073
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_1079
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_1098
.label_1145:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_1082
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_1082
	mov	r12, r15
	test	rbp, rbp
	jle	.label_1107
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_1229:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_1214
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1119
.label_1214:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_1229
	jmp	.label_1107
.label_1119:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_1145
	mov	r12, r15
	jmp	.label_1080
.label_1073:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_1080
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_1076
.label_1107:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_1090:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_1096:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_1063
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_1077
	jmp	.label_1063
.label_1187:
	test	cl, cl
	js	.label_1192
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_1193
	mov	rbp, r14
	jmp	.label_1094
.label_1181:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1200
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1213
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1205
.label_1213:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_1209
.label_1192:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_1217
	or	r15, r14
	jmp	.label_1193
.label_1217:
	mov	rbp, r14
	jmp	.label_1094
.label_1082:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_1222
	xor	r12d, r12d
	jmp	.label_1185
.label_1087:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_1185:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_1230
	test	rdx, rdx
	je	.label_1066
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1051
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_1066
	jmp	.label_1051
.label_1230:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_1066:
	cmp	r12, rbp
	jl	.label_1087
.label_1222:
	xor	eax, eax
.label_1051:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1076
	jmp	.label_1080
.label_1098:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_1080:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_1089
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_1090
	jmp	.label_1063
.label_1200:
	movsxd	rbp, eax
	jmp	.label_1094
.label_1205:
	movsxd	rbp, eax
	jmp	.label_1094
.label_1077:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_1097
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1138]]
.label_2806:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_1102
	nop	word ptr cs:[rax + rax]
.label_1121:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_1111
	movzx	eax, byte ptr [rdx + rbp]
.label_1111:
	test	rsi, rsi
	je	.label_1208
	movzx	eax, byte ptr [rsi + rax]
.label_1208:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1117
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_1121
	jmp	.label_1102
.label_1097:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_1078
	nop	word ptr cs:[rax + rax]
.label_1153:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_1063
	cmp	rbp, r14
	jle	.label_1078
	jmp	.label_1063
.label_1146:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_1063
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
.label_1078:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_1146
.label_1184:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_1149
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_1149:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_1153
	jmp	.label_1154
.label_2807:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_1156
	nop	word ptr cs:[rax + rax]
.label_1162:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1156
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_1162
	jmp	.label_1156
.label_2808:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_1156
	nop	word ptr cs:[rax + rax]
.label_1177:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1156
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_1177
.label_1156:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_1154
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_1186
	movzx	eax, byte ptr [rcx + r14]
.label_1186:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_1191
	movzx	eax, byte ptr [rcx + rax]
.label_1191:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_1154
	jmp	.label_1063
.label_1117:
	mov	rax, rbp
.label_1102:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_1063
.label_1154:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_1199
	jmp	.label_1063
.label_1109:
	cmp	eax, 0xc
	jne	.label_1201
.label_1053:
	mov	ecx, 0xc
.label_1063:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1204
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_1204:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_1220:
	mov	eax, ebx
.label_1054:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1070:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1227
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1228
.label_1227:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_1202
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_1054
	jmp	.label_1059
.label_1170:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_1053
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1228:
	mov	rcx, r8
	jmp	.label_1059
.label_1202:
	xor	ebp, ebp
	jmp	.label_1059
.label_1076:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_1089:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_1063
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1084
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_1088
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_1093:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_1093
	add	rcx, 2
.label_1088:
	cmp	rax, 7
	jb	.label_1084
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_1106:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_1106
.label_1084:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1136
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1136
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1139
	xor	eax, eax
	jmp	.label_1142
.label_1079:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_1067:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1053
.label_1139:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1142:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_1063
.label_1136:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_1158
.label_1182:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_1165
.label_1158:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_1179
	test	r10b, r10b
	jne	.label_1182
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_1165:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_1179:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_1158
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_1189
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_1132
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_1197:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_1197
.label_1132:
	cmp	rcx, 3
	jb	.label_1189
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_1224:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_1224
.label_1189:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_1063
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1063
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_1233:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1218
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_1218:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_1233
	jmp	.label_1063
.label_1201:
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d430

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d450

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_1251
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_1251
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_1234
	test	r13b, 8
	mov	al, r13b
	jne	.label_1234
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_1234
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_1234:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_1255
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_1243
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1247
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_1258
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_1235
.label_1255:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_1243
.label_1247:
	mov	rbp, qword ptr [rbx + 0x30]
.label_1258:
	inc	rbp
.label_1235:
	mov	rsi, r14
.label_1243:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_1251
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_1242
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_1244
.label_1242:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_1249
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_1254
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_1256
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_1259
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_1237
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_1236
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_1250
.label_1254:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_1250
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1256:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_1260
	mov	rbx, rax
	mov	rdi, r15
.label_1250:
	test	rbp, rbp
	jle	.label_1240
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_1246
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1246:
	cmp	rbp, 1
	je	.label_1245
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_1252:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_1252
.label_1245:
	mov	rbx, qword ptr [r12]
	jmp	.label_1239
.label_1240:
	xor	ebp, ebp
.label_1239:
	cmp	rbp, rbx
	jae	.label_1241
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1248:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_1248
.label_1241:
	mov	r13d, r14d
.label_1238:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_1244
.label_1249:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_1244
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_1261
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_1244:
	call	free
.label_1251:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1260:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1253
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_1257
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_1250
.label_1236:
	mov	rdi, r14
	call	free
.label_1237:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_1238
.label_1257:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1253:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_1238
.label_1259:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1261:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d870

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d890
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1264
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1267
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1264
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1263
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1265
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1264
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1263
.label_1267:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1266
.label_1264:
	mov	rax, -2
	jmp	.label_1262
.label_1266:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1263
.label_1265:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1263:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1262:
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
	#Procedure 0x40d9c0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1268
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1271
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1268
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1270
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1273
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1268
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1270
.label_1271:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1269
.label_1268:
	mov	rax, -2
	jmp	.label_1272
.label_1269:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1270
.label_1273:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1270:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1272:
	add	rsp, 0x28
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
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_1274
	mov	al, r9b
.label_1274:
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
	#Procedure 0x40db30

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
	je	.label_1275
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1275:
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
	#Procedure 0x40db90

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1277
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1276
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1276
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1277
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1276
	mov	qword ptr [rbx + 0x18], rax
.label_1277:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1278
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1276
	mov	qword ptr [rbx + 8], rax
.label_1278:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1276:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20

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
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1286
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1286
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1297
.label_1286:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1300
.label_1297:
	cmp	r13, r15
	jle	.label_1303
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_1289
.label_1313:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1336
	cmp	rbp, -2
	jne	.label_1315
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1315
.label_1336:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_1320
.label_1332:
	mov	rax, r15
	jmp	.label_1283
.label_1320:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1332
	nop	word ptr [rax + rax]
.label_1289:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1284
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1284
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1283
	nop	word ptr cs:[rax + rax]
.label_1284:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1313
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_1319
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1327
.label_1319:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1317
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_1327:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1283
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1283:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1289
	jmp	.label_1293
.label_1317:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1294
.label_1315:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1303:
	mov	rax, r15
.label_1293:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1298
.label_1300:
	cmp	r15, r13
	jge	.label_1301
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_1294:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1310
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_1285:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_1324
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_1331
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_1337
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1281
.label_1310:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_1285
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1295:
	cmp	rsi, rdx
	jge	.label_1291
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1295
	mov	rbx, r8
	jmp	.label_1285
.label_1324:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1318
	cmp	r14, -2
	jne	.label_1308
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1308
.label_1318:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1314
.label_1280:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1322
.label_1282:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1328
.label_1326:
	mov	rbp, r15
	jmp	.label_1300
.label_1337:
	cmp	r8, -1
	je	.label_1331
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1335
.label_1308:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_1301:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_1298:
	xor	eax, eax
.label_1288:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1331:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1281:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1290
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1296
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1296
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1302
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_844]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1302:
	test	rsi, rsi
	je	.label_1325
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_844]]
	nop	word ptr cs:[rax + rax]
.label_1305:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1305
.label_1325:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1290
.label_1296:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1304:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1304
.label_1290:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1311
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_1300
.label_1311:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1300
.label_1291:
	mov	rbx, r8
	jmp	.label_1285
.label_1335:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_1329
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1334
.label_1329:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1279
	test	r15, r15
	je	.label_1321
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1287
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1287
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1312
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_844]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_1312:
	test	rsi, rsi
	je	.label_1309
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_844]]
.label_1316:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1316
.label_1309:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_1321
.label_1287:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1287
.label_1321:
	mov	byte ptr [r12 + 0x8c], 1
.label_1279:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_1323
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1292
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1292
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_844]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1306]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1307]],  0xe8
.label_1333:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_1333
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_1323
.label_1292:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1299:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1299
.label_1323:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1330
	add	qword ptr [r12 + 0x68], rcx
.label_1330:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_1300
.label_1314:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1280
.label_1322:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_1282
.label_1328:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1326
.label_1334:
	mov	eax, 0xc
	jmp	.label_1288
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e540

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
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_1338
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1347
	nop	dword ptr [rax + rax]
.label_1344:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1339
.label_1341:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_1345
.label_1348:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_1345:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1346
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1346:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1347
	jmp	.label_1349
.label_1350:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1340
	nop	dword ptr [rax + rax]
.label_1343:
	cmp	rax, rdx
	jge	.label_1342
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1343
	lea	rsi, [rsp + 0x10]
	jmp	.label_1340
.label_1339:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1341
.label_1342:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1340
	nop	word ptr cs:[rax + rax]
.label_1347:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1350
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1340:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1344
	cmp	rax, -2
	jne	.label_1348
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1344
	mov	qword ptr [r14], rbp
.label_1338:
	mov	rcx, r13
.label_1349:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40e6e0

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
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1355
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1359
.label_1355:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_1361
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1353
.label_1358:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1364
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1366
	nop	word ptr cs:[rax + rax]
.label_1353:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_1357
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_1362
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1357
.label_1362:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_1351
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1365
.label_1351:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_1357:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1358
	mov	rax, qword ptr [r14 + 0x70]
.label_1366:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1354
	mov	qword ptr [rbx], rbp
.label_1354:
	test	r15, r15
	je	.label_1352
	mov	qword ptr [r15], rbp
.label_1352:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_1353
	jmp	.label_1359
.label_1361:
	mov	rbp, rbx
.label_1359:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1365:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1359
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1363:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1363
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1363
	nop	word ptr cs:[rax + rax]
.label_1356:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1367
	cmp	eax, 6
	jne	.label_1368
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
	jmp	.label_1360
	nop	dword ptr [rax]
.label_1367:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1360:
	call	free
.label_1368:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1359
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1356
	test	rbx, rbx
	mov	r15, rax
	je	.label_1356
	jmp	.label_1363
.label_1364:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_1359
	.section	.text
	.align	32
	#Procedure 0x40e970

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1395
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1391
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1391
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1399
.label_1391:
	cmp	r12d, 0x5c
	jne	.label_1402
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1403
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1407
.label_1397:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_1369:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1371
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
	jmp	.label_1378
.label_1395:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1372
.label_1402:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1387
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1390
.label_1403:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1398
.label_1387:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1390:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1379
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_1406
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1405]]
.label_2888:
	mov	rdx, r13
	test	dl, 8
	jne	.label_1370
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1370
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1372
	mov	eax, dword ptr [r15 + 8]
.label_1370:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1372
.label_1379:
	cmp	r12d, 0x7a
	jg	.label_1385
	cmp	r12d, 0x3f
	je	.label_1384
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1392
	cmp	r12d, 0x5e
	jne	.label_1372
	test	edx, 0x800008
	jne	.label_1375
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1375
	test	dh, 8
	je	.label_1372
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1372
.label_1375:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_1372
.label_1371:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1378:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_1393
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_1373
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1374]]
.label_2898:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_1372
.label_1385:
	cmp	r12d, 0x7b
	je	.label_1380
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_1382
	cmp	r12d, 0x7d
	jne	.label_1372
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_1383
	jmp	.label_1372
.label_1399:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1398:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_1372:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1393:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_1388
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1394]]
.label_2911:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_1406:
	cmp	r12d, 0xa
	jne	.label_1372
	mov	rcx, r13
	test	ch, 8
	jne	.label_1386
	jmp	.label_1372
.label_2889:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1401
	jmp	.label_1372
.label_2890:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1404
	jmp	.label_1372
.label_2891:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2892:
	test	r13w, 0x402
	jne	.label_1372
	jmp	.label_1376
.label_2893:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_1384:
	test	r13w, 0x402
	jne	.label_1372
	jmp	.label_1377
.label_1392:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_1380:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_1381
	jmp	.label_1372
.label_1382:
	test	ch, 4
	jne	.label_1372
	test	cx, cx
	js	.label_1386
	jmp	.label_1372
.label_1388:
	cmp	ecx, 0x60
	je	.label_1389
	cmp	ecx, 0x62
	jne	.label_1372
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1372
.label_1407:
	cmp	edx, 2
	jl	.label_1396
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1397
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1396
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1397
.label_1396:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1400
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1400:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_1369
	test	r14b, r14b
	js	.label_1397
	jmp	.label_1369
.label_1373:
	cmp	ecx, 0x57
	jne	.label_1372
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2912:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2913:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1372
.label_1381:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2914:
	mov	rcx, r13
	test	ch, 4
	jne	.label_1372
	test	cx, cx
	js	.label_1372
.label_1386:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2915:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1372
.label_1383:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_1389:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1372
.label_2894:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1372
.label_2895:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1372
.label_1401:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2896:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1372
.label_1404:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2897:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1372
.label_1376:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2899:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_1372
.label_2900:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1372
.label_2901:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1372
.label_1377:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
.label_2902:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1372
.label_2903:
	test	r13d, 0x80000
	jne	.label_1372
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1372
	.section	.text
	.align	32
	#Procedure 0x40f010

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
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1422
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1422
	jmp	.label_1410
	nop	word ptr [rax + rax]
.label_1421:
	test	rbx, rbx
	cmove	rbx, r12
.label_1422:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_1431
	test	r15, r15
	je	.label_1434
	cmp	eax, 9
	je	.label_1432
.label_1434:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1414
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1409
.label_1414:
	test	rbx, rbx
	je	.label_1421
	test	r12, r12
	je	.label_1421
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1424
	mov	rax, qword ptr [r14 + 0x70]
.label_1420:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_1422
.label_1424:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1417
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1420
.label_1409:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1410
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1433:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1433
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1433
	nop	word ptr cs:[rax + rax]
.label_1429:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1428
	cmp	eax, 6
	jne	.label_1412
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
	jmp	.label_1425
	nop	dword ptr [rax]
.label_1428:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1425:
	call	free
.label_1412:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1410
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1429
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1429
	jmp	.label_1433
.label_1431:
	mov	r12, rbx
	jmp	.label_1410
.label_1432:
	mov	r12, rbx
.label_1410:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1417:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_1413:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_1413
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_1413
	nop	word ptr cs:[rax + rax]
.label_1408:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1423
	cmp	eax, 6
	jne	.label_1426
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1427
.label_1423:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1427:
	call	free
.label_1426:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_1419
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_1408
	test	r12, r12
	mov	rbp, rax
	je	.label_1408
	jmp	.label_1413
.label_1419:
	mov	r14d, 0x400ff
.label_1415:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1415
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1415
	nop	dword ptr [rax + rax]
.label_1418:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1416
	cmp	eax, 6
	jne	.label_1411
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_1411
.label_1416:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_1411:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1430
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1418
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1418
	jmp	.label_1415
.label_1430:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1410
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f360

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
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_1461
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1662]]
.label_2864:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_8
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_1671
	mov	r9, rbx
	jmp	.label_1454
.label_2865:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1446
.label_1671:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_1454
	jmp	.label_1461
.label_2855:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1463
	mov	rax, qword ptr [r9 + 0x70]
.label_1565:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1470
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1492
	mov	rbp, r15
	jmp	.label_1454
.label_1595:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1502
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1513
	mov	rax, qword ptr [r9 + 0x70]
.label_1520:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1579:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1545
	mov	rax, qword ptr [r9 + 0x70]
.label_1500:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_1475
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_1492
	jmp	.label_1454
.label_1513:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1579
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1520
.label_1545:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_1475
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1500
.label_1492:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1595
	mov	rbp, r15
	jmp	.label_1454
.label_2856:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1598
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1604
	mov	rax, qword ptr [r9 + 0x70]
.label_1591:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1454
.label_2857:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1624
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1581:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_1454
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1454
.label_2858:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_1563
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_1461
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1656
	mov	r15, rbp
.label_1563:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1678
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1678:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1440
	mov	rax, qword ptr [r9 + 0x70]
.label_1600:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_1453
	mov	qword ptr [rsi], rbp
.label_1453:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1454
.label_2859:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_1482
	mov	dword ptr [r12], 0x10
	jmp	.label_1486
.label_2861:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1490
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1494
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1499
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1507]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1499
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1494:
	mov	eax, dword ptr [r15]
.label_1490:
	cmp	eax, 0x200
	je	.label_1521
	cmp	eax, 0x100
	jne	.label_1523
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1527
	mov	rax, qword ptr [r9 + 0x70]
.label_1476:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1537
.label_2863:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_1557
.label_2860:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_1557
	test	cl, 0x10
	jne	.label_1573
.label_1482:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1645
	mov	rax, qword ptr [r9 + 0x70]
.label_1528:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1651:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1454
.label_2866:
	mov	dword ptr [r12], 5
	jmp	.label_1486
.label_2862:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_1602
	test	rbx, rbx
	je	.label_1602
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_1611
	cmp	edx, 2
	je	.label_1614
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1615
.label_1446:
	mov	r9, rbx
	jmp	.label_1454
.label_1573:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
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
.label_1470:
	mov	rbp, r15
	jmp	.label_1454
.label_1611:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1607
	or	byte ptr [r13 + 1], 4
.label_1607:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1614
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1615:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1650
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1650:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1462
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1458
.label_1504:
	cmp	eax, 2
	je	.label_1670
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1458
	jmp	.label_1462
.label_2919:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1464
.label_2920:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_1472
	mov	rax, qword ptr [r15]
.label_1438:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1478
.label_1623:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_1587
.label_1465:
	xor	eax, eax
.label_1587:
	cmp	ebx, 3
	je	.label_1493
	test	ebx, ebx
	jne	.label_1495
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1497
.label_1493:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1497
.label_1495:
	xor	ebp, ebp
.label_1497:
	cmp	r15d, 3
	je	.label_1588
	test	r15d, r15d
	jne	.label_1506
.label_1588:
	test	r12, r12
	movzx	edx, al
	je	.label_1512
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1512
.label_1506:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1512:
	cmp	ebx, 3
	je	.label_1566
	test	ebx, ebx
	jne	.label_1516
.label_1566:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1518
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1518
.label_1516:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1518:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1436
	cmp	ebp, -1
	je	.label_1436
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1533
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_1436
.label_1533:
	test	r12, r12
	je	.label_1539
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1542
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1677:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1485
.label_1539:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1485:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1601:
	cmp	rdx, rcx
	ja	.label_1568
	cmp	rcx, rax
	ja	.label_1568
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1568:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1601
	mov	dword ptr [r12], 0
	jmp	.label_1478
.label_1472:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1449
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_1438
.label_1542:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_1483
	test	r14, r14
	je	.label_1483
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1677
.label_1458:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1613
	cmp	r15d, 4
	jne	.label_1617
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1478
	jmp	.label_1629
.label_1617:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1630
	cmp	eax, 2
	jne	.label_1634
	jmp	.label_1636
.label_1630:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_1644
	cmp	ecx, 2
	je	.label_1648
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1661
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1456
	xor	r12d, r12d
.label_1456:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_1436
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_1436
	cmp	r15d, 3
	jne	.label_1680
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
.label_2845:
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1436
.label_1680:
	cmp	ebx, 3
	jne	.label_1596
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1436
.label_1596:
	cmp	r15d, 3
	je	.label_1623
	test	r15d, r15d
	jne	.label_1465
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_1587
.label_1644:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1634:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_1474
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1479]]
.label_1613:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1487
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1464:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_1478:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1504
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1510
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1510:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1524
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1524:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1508
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1508
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1508
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1508
	cmp	eax, 2
	jl	.label_1631
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1508
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1508
.label_1631:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1655
	mov	rax, qword ptr [r9 + 0x70]
.label_1553:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1651
.label_1508:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1589
	mov	rax, qword ptr [r9 + 0x70]
.label_1659:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_1590
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1590
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1590
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1627
.label_1590:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1609
	mov	rbp, qword ptr [r9 + 0x70]
.label_1649:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1468
	mov	rax, qword ptr [r9 + 0x70]
.label_1594:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_1454
.label_1521:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1647
	mov	rax, qword ptr [r9 + 0x70]
.label_1498:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1537:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1667
	mov	rax, qword ptr [r9 + 0x70]
.label_1612:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1610:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1448
	mov	rax, qword ptr [r9 + 0x70]
.label_1621:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_1455
	mov	qword ptr [rbp], r15
.label_1455:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_1475
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_1481
	jmp	.label_1475
.label_1523:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1484
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1514:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_1481:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1461
.label_1645:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1528
.label_1462:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1538
.label_1614:
	mov	dword ptr [r12], 2
	jmp	.label_1547
.label_1670:
	mov	dword ptr [r12], 7
.label_1629:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1555
.label_1502:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1454
.label_1463:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1565
.label_1598:
	mov	dword ptr [r12], 6
	jmp	.label_1486
.label_1624:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_1475
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1581
.label_1602:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1475
.label_1604:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1591
.label_1440:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1600
.label_1667:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1610
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1612
.label_1448:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1621
.label_1487:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1538
.label_1499:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1652:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1531:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1637
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1637:
	cmp	esi, 0x5f
	je	.label_1642
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1643
.label_1642:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1643:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1531
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1652
	jmp	.label_1494
.label_1589:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1449
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1659
.label_1609:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1449
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1649
.label_1468:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1449
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_1594
.label_1636:
	mov	dword ptr [r12], 7
	jmp	.label_1538
.label_1527:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_1473
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1476
.label_1647:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1672
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1498
.label_1484:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1514
.label_1475:
	mov	dword ptr [r12], 0xc
	jmp	.label_1486
.label_1648:
	mov	dword ptr [r12], 7
	jmp	.label_1526
.label_1627:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_1454
.label_1656:
	test	rsi, rsi
	je	.label_1535
	mov	r14d, 0x400ff
.label_1540:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1540
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_1540
.label_1570:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1447
	cmp	eax, 6
	jne	.label_1551
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
	jmp	.label_1562
.label_1447:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1562:
	call	free
.label_1551:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1535
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_1570
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1570
	jmp	.label_1540
.label_1535:
	mov	dword ptr [r12], 8
	jmp	.label_1486
.label_1473:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1537
.label_1672:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1537
.label_1661:
	mov	dword ptr [r12], eax
	jmp	.label_1526
.label_1655:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1449
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1553
.label_1449:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1547:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1555
.label_1483:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_1436:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1526:
	mov	r9, r13
.label_1538:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1555:
	mov	rdi, r13
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
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_1461
.label_1454:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_1541:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1585
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1633
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1625
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1641
.label_1663:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1625:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1657
	cmp	eax, 2
	je	.label_1452
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1664
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1625
	cmp	eax, 1
	jne	.label_1625
	cmp	r15, -2
	je	.label_1625
	cmp	ecx, 0x39
	ja	.label_1625
	cmp	r15, -1
	jne	.label_1663
	lea	rdx, [rcx - 0x30]
	jmp	.label_1625
.label_1664:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1657:
	cmp	r15, -1
	jne	.label_1679
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1681
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1682
.label_1681:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1439
	nop	word ptr cs:[rax + rax]
.label_1679:
	cmp	r15, -2
	je	.label_1452
	cmp	esi, 0x18
	je	.label_1457
	cmp	esi, 1
	jne	.label_1452
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1452
.label_1682:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_1467
.label_1457:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_1471
.label_1515:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_1467:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_1496
	cmp	eax, 2
	je	.label_1491
	cmp	ecx, 0x2c
	je	.label_1496
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1467
	cmp	eax, 1
	jne	.label_1467
	cmp	r12, -2
	je	.label_1467
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_1467
	cmp	r12, -1
	jne	.label_1515
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1467
.label_1496:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1491
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_1471
	cmp	r15, rcx
	jg	.label_1517
.label_1471:
	cmp	eax, 0x18
	jne	.label_1517
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1522
.label_1641:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_1480
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1544
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1554
.label_1489:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1532
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1572:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1572
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1572
	nop	word ptr cs:[rax + rax]
.label_1582:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_1577
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1577
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1577:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1532
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1582
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1582
	jmp	.label_1572
	nop	dword ptr [rax + rax]
.label_1532:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1584
	mov	rax, qword ptr [r8 + 0x70]
.label_1653:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1501
	mov	qword ptr [r12], r13
.label_1501:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1603
	jmp	.label_1605
	nop	word ptr cs:[rax + rax]
.label_1544:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1544
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1544
	nop	word ptr cs:[rax + rax]
.label_1635:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1616
	cmp	eax, 6
	jne	.label_1619
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
	jmp	.label_1561
	nop	word ptr cs:[rax + rax]
.label_1616:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1561:
	call	free
.label_1619:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1480
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1635
	test	rax, rax
	mov	rbx, rdx
	je	.label_1635
	jmp	.label_1544
.label_1459:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1666
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1646
.label_1606:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1654
.label_1509:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1466
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1620
.label_1666:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1668
.label_1559:
	mov	qword ptr [r14], 0
.label_1668:
	xor	r12d, r12d
.label_1654:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1466
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1437
	nop	word ptr cs:[rax + rax]
.label_1605:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1459
	mov	rax, qword ptr [r8 + 0x70]
.label_1646:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_1575
	nop	word ptr cs:[rax + rax]
.label_1530:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [r14], rcx
.label_1575:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1519
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1525
	nop	
.label_1519:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1608:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1638
	test	r12, r12
	jne	.label_1536
.label_1638:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1608
	jmp	.label_1675
.label_1536:
	lea	r14, [rbp + 0x10]
.label_1525:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1548
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1530
.label_1548:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1559
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1530
	nop	word ptr cs:[rax + rax]
.label_1675:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1606
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_1437:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_1466
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1509
	mov	rax, qword ptr [r8 + 0x70]
.label_1620:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_1605
.label_1603:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1558
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1660
	mov	rax, qword ptr [r8 + 0x70]
.label_1622:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_1583
.label_1558:
	mov	r12, qword ptr [rsp + 0x18]
.label_1583:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1592
.label_1517:
	mov	qword ptr [rsp + 0x50], r14
.label_1439:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_1480
.label_1554:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1639
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1640
.label_1584:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1466
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1653
.label_1491:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1452:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1658
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1480
.label_1628:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1673
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1674
.label_1477:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1442
.label_1673:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1450
.label_1580:
	mov	qword ptr [r12], 0
.label_1450:
	xor	r13d, r13d
.label_1442:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1466
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1618
	nop	dword ptr [rax + rax]
.label_1640:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1628
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1674:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_1488
	nop	word ptr cs:[rax + rax]
.label_1578:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [r12], rcx
.label_1488:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1543
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1552
	nop	word ptr cs:[rax + rax]
.label_1543:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1569:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1550
	test	r13, r13
	jne	.label_1567
.label_1550:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1569
	jmp	.label_1574
.label_1567:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1552:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1576
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1578
.label_1576:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1580
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1578
	nop	word ptr cs:[rax + rax]
.label_1574:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1477
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1618:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1443
	mov	qword ptr [rdi], rdx
.label_1443:
	test	r13, r13
	je	.label_1466
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1640
.label_1639:
	cmp	r15, r9
	jne	.label_1665
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1480
.label_1660:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_1480
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1622
.label_1665:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1626
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1505:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_1546
	nop	word ptr cs:[rax + rax]
.label_1460:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
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
	mov	qword ptr [rbp], rcx
.label_1546:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1669
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1676
.label_1669:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1444:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1435
	test	r13, r13
	jne	.label_1441
.label_1435:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_1444
	jmp	.label_1451
.label_1441:
	lea	rbp, [rbx + 0x10]
.label_1676:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1511
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1460
.label_1511:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1469
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1460
.label_1658:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1480
.label_1451:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1489
.label_1522:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_1480
.label_1626:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1503
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1505
.label_1503:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1466
.label_1469:
	mov	qword ptr [rbp], 0
.label_1466:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1480:
	test	rcx, rcx
	sete	al
	jne	.label_1592
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1529
	jmp	.label_1534
	nop	word ptr cs:[rax + rax]
.label_1592:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1529:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1541
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1549
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1541
.label_1549:
	test	al, al
	jne	.label_1557
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1560:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1560
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1560
	nop	word ptr cs:[rax + rax]
.label_1586:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1564
	cmp	eax, 6
	jne	.label_1571
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
	jmp	.label_1632
	nop	dword ptr [rax]
.label_1564:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1632:
	call	free
.label_1571:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1557
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1586
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1586
	jmp	.label_1560
.label_1534:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_1461
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1593:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1593
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1593
	nop	word ptr cs:[rax + rax]
.label_1445:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1597
	cmp	eax, 6
	jne	.label_1599
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
	jmp	.label_1556
	nop	dword ptr [rax]
.label_1597:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1556:
	call	free
.label_1599:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1461
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1445
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1445
	jmp	.label_1593
.label_1557:
	mov	dword ptr [r12], 0xd
.label_1486:
	xor	r15d, r15d
	jmp	.label_1461
.label_1585:
	mov	r15, rbp
	jmp	.label_1461
.label_1633:
	mov	r15, rbp
.label_1461:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1474:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x411b00

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
	mov	dword ptr [rsp + 0xc], r8d
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
	je	.label_1698
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1696
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
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
	jne	.label_1685
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1689
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1684:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1684
.label_1689:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1697
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1697:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1683
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1683:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1693
	mov	rax, qword ptr [r12 + 0x70]
.label_1700:
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
	jl	.label_1690
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1691
	mov	rbp, qword ptr [r12 + 0x70]
.label_1686:
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
	je	.label_1694
	mov	rcx, qword ptr [r12 + 0x70]
.label_1695:
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
	jmp	.label_1687
.label_1690:
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
	jmp	.label_1687
.label_1698:
	mov	dword ptr [r15], 0xc
	jmp	.label_1688
.label_1696:
	mov	rdi, rbx
	jmp	.label_1699
.label_1685:
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
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1688
.label_1693:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1692
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1700
.label_1691:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1692
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1686
.label_1692:
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
.label_1699:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1688:
	xor	eax, eax
.label_1687:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1694:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1687
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1695
	nop	
	.section	.text
	.align	32
	#Procedure 0x411ed0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1707
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1710
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1710
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1709
.label_1710:
	test	dl, 1
	je	.label_1702
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1702
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1702
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1709
.label_1707:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1702:
	cmp	eax, 0x5b
	jne	.label_1712
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1704
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1703
.label_1712:
	cmp	eax, 0x5e
	je	.label_1705
	cmp	eax, 0x5d
	je	.label_1708
	cmp	eax, 0x2d
	jne	.label_1709
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1709:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1704:
	xor	eax, eax
.label_1703:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1711
	cmp	eax, 0x3a
	je	.label_1713
	cmp	eax, 0x2e
	jne	.label_1701
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1708:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1713:
	test	dl, 4
	jne	.label_1706
.label_1701:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1705:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1711:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1706:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411fd0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1724
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1724
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1723:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1718
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1723
.label_1718:
	cmp	edi, 2
	jl	.label_1724
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1725
.label_1724:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1721
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1731]]
.label_2922:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1714
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1733
.label_1732:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1733:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1716
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1719
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1722
	nop	
.label_1716:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1735:
	mov	bl, byte ptr [rbx + rdx]
.label_1722:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1714
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1729
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1730
.label_1729:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1732
	jmp	.label_1714
.label_1719:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1734
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1715
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1720
.label_1715:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1720
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1727
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1727
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1717:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1727
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1717
.label_1727:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1722
.label_1734:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1735
.label_1720:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1722
.label_1730:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1726
	cmp	ecx, 0x1c
	je	.label_1728
	cmp	ecx, 0x1a
	jne	.label_1714
	mov	dword ptr [r14], 3
	jmp	.label_1714
.label_1726:
	mov	dword ptr [r14], 4
	jmp	.label_1714
.label_1728:
	mov	dword ptr [r14], 2
	jmp	.label_1714
.label_2921:
	test	r9b, r9b
	jne	.label_1721
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1714
.label_1721:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1725:
	xor	eax, eax
.label_1714:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412230

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
	je	.label_1751
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1763
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1751
.label_1763:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1751:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1795
.label_1748:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1785
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1789
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1793
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1797
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1739
	mov	esi, OFFSET FLAT:.str.11_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1744
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1799
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1778
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1762
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1767
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1776
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1738
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1758
.label_1780:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1788
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1788:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1780
	jmp	.label_1738
.label_1785:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1766
	nop	word ptr cs:[rax + rax]
.label_1753:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1742
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1742:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1753
	jmp	.label_1738
	nop	dword ptr [rax]
.label_1766:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1771
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1771:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1766
	jmp	.label_1738
.label_1789:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1769
	nop	
.label_1786:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1773
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1773:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1786
	jmp	.label_1738
	nop	dword ptr [rax]
.label_1769:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1792
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1792:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1769
	jmp	.label_1738
.label_1793:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1743
	nop	
.label_1754:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1741
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1741:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1754
	jmp	.label_1738
	nop	word ptr [rax + rax]
.label_1743:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1794
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1794:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1743
	jmp	.label_1738
.label_1797:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1770
	nop	
.label_1787:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1764
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1764:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1787
	jmp	.label_1738
.label_1770:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1790
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1790:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1770
	jmp	.label_1738
.label_1795:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1738
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1748
.label_1739:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1760
	nop	word ptr cs:[rax + rax]
.label_1768:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1759
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1759:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1768
	jmp	.label_1738
.label_1760:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1772
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1772:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1760
	jmp	.label_1738
.label_1744:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1749
	nop	dword ptr [rax]
.label_1798:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1777
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1777:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1798
	jmp	.label_1738
.label_1749:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1740
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1740:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1749
	jmp	.label_1738
.label_1799:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1756
	nop	dword ptr [rax]
.label_1791:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1779
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1779:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1791
	jmp	.label_1738
.label_1756:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1755
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1755:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1756
	jmp	.label_1738
.label_1778:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1782
	nop	dword ptr [rax]
.label_1761:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1781
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1781:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1761
	jmp	.label_1738
.label_1782:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1745
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1745:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1782
	jmp	.label_1738
.label_1762:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1775
	nop	dword ptr [rax]
.label_1746:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1774
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1774:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1746
	jmp	.label_1738
.label_1775:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1737
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1737:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1775
	jmp	.label_1738
.label_1767:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1747
.label_1796:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1783
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1783:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1796
	jmp	.label_1738
.label_1747:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1736
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1736:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1747
	jmp	.label_1738
.label_1758:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1750
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1750:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1758
	jmp	.label_1738
.label_1776:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1757
.label_1752:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1765
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1765:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1752
.label_1738:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1757:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1784
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1784:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1757
	jmp	.label_1738
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4129e0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_1800
	cmp	eax, 4
	jne	.label_1801
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1801
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1800:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1801
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1801
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1802
	mov	qword ptr [rdx], rsi
.label_1802:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1801
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1801:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412a70

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1811
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1804]]
.label_2884:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1814
	mov	qword ptr [rax], r15
	jmp	.label_1805
.label_2885:
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
	js	.label_1806
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1815
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1809
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1810
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1805
.label_2882:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1809
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2883:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1805
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1803
	mov	qword ptr [rax], rbx
	jmp	.label_1805
.label_1811:
	test	dl, 8
	jne	.label_1808
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1805
.label_1810:
	mov	qword ptr [rax], 2
	jge	.label_1812
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1805
.label_1812:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1805:
	xor	eax, eax
.label_1809:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1814:
	lea	rax, [r14 + rbx*8]
.label_1813:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1809
.label_1803:
	lea	rax, [r14 + r15*8]
	jmp	.label_1813
.label_1806:
	mov	edi, OFFSET FLAT:.str.18_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1815:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1808:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c80

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
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1816
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1816
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1826
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1826
.label_1816:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1817
	mov	rax, qword ptr [rbx + 0x70]
.label_1831:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1829:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1818
	mov	rax, qword ptr [rbx + 0x70]
.label_1828:
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
.label_1825:
	test	r13, r13
	mov	rbp, r15
	je	.label_1819
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1830
	mov	rax, qword ptr [rbx + 0x70]
.label_1820:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1819
	mov	qword ptr [r15], rbp
.label_1819:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1822
	mov	rax, qword ptr [rbx + 0x70]
.label_1824:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1827
	mov	qword ptr [r12], r13
.label_1827:
	test	rbp, rbp
	je	.label_1821
	mov	qword ptr [rbp], r13
.label_1821:
	test	r15, r15
	je	.label_1823
	test	r12, r12
	je	.label_1823
	test	rbp, rbp
	je	.label_1823
	test	r13, r13
	je	.label_1823
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1826:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1817:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1829
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1831
.label_1818:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1825
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1828
.label_1822:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1821
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1824
.label_1823:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1826
.label_1830:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1819
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1820
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f80

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
	jae	.label_1832
.label_1835:
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
	jne	.label_1837
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1836
.label_1837:
	cmp	eax, 6
	sete	cl
.label_1836:
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
.label_1834:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1832:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1834
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1834
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1833
	test	rax, rax
	je	.label_1833
	test	r13, r13
	je	.label_1833
	test	rbp, rbp
	je	.label_1833
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1835
.label_1833:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1834
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413150

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
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1840
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
	je	.label_1846
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1846
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1846
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1840
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1846:
	mov	rbx, r12
	test	al, 8
	jne	.label_1845
	xor	r15d, r15d
	jmp	.label_1847
.label_1845:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1848
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1844:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1842
	test	rcx, rcx
	jne	.label_1841
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1838
	jmp	.label_1840
	nop	dword ptr [rax]
.label_1841:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1838:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1840
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1849
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1842:
	mov	r15b, 1
.label_1849:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1844
	jmp	.label_1847
.label_1848:
	xor	r15d, r15d
.label_1847:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1840
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1839
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1839
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1843
.label_1839:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1843:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1840:
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
	#Procedure 0x413360

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
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_1863:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1853:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1857
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1865
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_1853
	jmp	.label_1855
	nop	dword ptr [rax + rax]
.label_1857:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1850
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1854
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1851
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1851
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1852:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1858
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1866
.label_1858:
	dec	rsi
	test	rsi, rsi
	jle	.label_1851
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1852
	jmp	.label_1851
.label_1866:
	cmp	rsi, -1
	je	.label_1851
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1861
	jmp	.label_1855
	nop	word ptr [rax + rax]
.label_1851:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1864
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1855
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1855
.label_1861:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1860
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1853
	jmp	.label_1855
.label_1854:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1856
	cmp	rbx, r15
	jne	.label_1859
.label_1856:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_1855
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1863
	jmp	.label_1855
.label_1865:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1855
.label_1864:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1855
.label_1860:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1855
.label_1850:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1862:
	mov	dword ptr [rsp + 0x24], 0
.label_1855:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1859:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1855
	jmp	.label_1862
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4137c0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1867
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1867
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1875
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1869
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1875:
	test	rcx, rcx
	je	.label_1877
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1879
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1868
.label_1874:
	dec	rax
.label_1878:
	dec	rcx
	jmp	.label_1872
	nop	word ptr cs:[rax + rax]
.label_1868:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1874
	jge	.label_1878
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1872:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1868
.label_1879:
	test	rax, rax
	js	.label_1880
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1880:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1867
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1871:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1873:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1870
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1873
	jmp	.label_1867
	nop	dword ptr [rax]
.label_1870:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1871
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1876
.label_1877:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1876:
	shl	rdx, 3
	call	memcpy
.label_1867:
	xor	eax, eax
.label_1869:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413940

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
	je	.label_1881
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1883
	cmp	rsi, rcx
	jne	.label_1885
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1891
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1894
.label_1881:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1886
	mov	qword ptr [rax], rbx
	jmp	.label_1889
.label_1883:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1890
.label_1885:
	mov	rax, qword ptr [r14 + 0x10]
.label_1894:
	cmp	qword ptr [rax], rbx
	jle	.label_1892
	test	rcx, rcx
	jle	.label_1888
	nop	word ptr cs:[rax + rax]
.label_1882:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1882
	jmp	.label_1888
.label_1892:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1887
	nop	dword ptr [rax]
.label_1893:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1887:
	cmp	rdx, rbx
	jg	.label_1893
.label_1888:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1890:
	inc	qword ptr [r14 + 8]
.label_1889:
	mov	al, 1
.label_1884:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1886:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1884
.label_1891:
	xor	eax, eax
	jmp	.label_1884
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a30

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1913
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_1922
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1905
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1931
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1908
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1915:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1915
	jmp	.label_1920
.label_1913:
	mov	dword ptr [rdi], 0
	jmp	.label_1921
.label_1931:
	xor	ebx, ebx
	jmp	.label_1905
.label_1908:
	pxor	xmm1, xmm1
.label_1920:
	cmp	r9, 0xc
	jb	.label_1926
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_1896:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1896
.label_1926:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1922
.label_1905:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1895:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_1895
.label_1922:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1900
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1902:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_1909
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1909
	test	rdx, rdx
	je	.label_1909
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_1909
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1909
	mov	rax, r8
	nop	dword ptr [rax]
.label_1927:
	test	rax, rax
	jle	.label_1897
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1927
	nop	word ptr cs:[rax + rax]
.label_1909:
	inc	rbx
	cmp	rbx, r10
	jl	.label_1902
.label_1900:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_1912
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1917
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1932
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_1907
.label_1917:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_1907:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1918
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_1903:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1928
	test	ecx, ecx
	je	.label_1911
.label_1928:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1914
	cmp	edx, 2
	jne	.label_1923
	or	bl, 0x10
	jmp	.label_1925
.label_1914:
	or	bl, 0x40
.label_1925:
	mov	byte ptr [r15 + 0x68], bl
.label_1923:
	test	ecx, ecx
	je	.label_1911
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1930
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_1899
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1906
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1916
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1924
.label_1906:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1924:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_1930:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_1898
	mov	eax, r13d
	and	eax, 1
	jne	.label_1901
.label_1898:
	test	ebp, ebp
	je	.label_1904
	mov	eax, r13d
	and	eax, 2
	jne	.label_1901
.label_1904:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1910
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1901
.label_1910:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1911
	and	r13d, 0x40
	je	.label_1911
	nop	
.label_1901:
	mov	rax, r12
	sub	rax, r8
	js	.label_1919
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1919
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1919
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1929:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1929
	nop	word ptr [rax + rax]
.label_1919:
	inc	r8
.label_1911:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_1903
.label_1918:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_1897
.label_1899:
	mov	rdi, r15
	call	free_state
	jmp	.label_1912
.label_1916:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1912
.label_1932:
	mov	rdi, rbp
	call	free
.label_1912:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_1921:
	xor	r15d, r15d
.label_1897:
	mov	rax, r15
	add	rsp, 0x38
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
	#Procedure 0x413ef0

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
	je	.label_1935
	test	r13, r13
	jle	.label_1938
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1934:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1933
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1939
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1937
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1939:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1933:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1934
.label_1938:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1936
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1940:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1935
.label_1937:
	mov	ecx, 0xc
.label_1935:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1936:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1935
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1940
	nop	
	.section	.text
	.align	32
	#Procedure 0x414030

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
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1961
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1974
	mov	qword ptr [rbx + 0x20], 0
.label_1974:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_1979
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_1979:
	test	r14, r14
	je	.label_1956
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1998
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2002
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2006
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2006:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1947
.label_1951:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1967:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1956
	add	qword ptr [rbx + 8], r14
.label_1956:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1960
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1969
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1975
	jmp	.label_1971
.label_1960:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1977
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1971
.label_1969:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1971:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1975:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1961:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_1979
.label_1998:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1989
.label_2005:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1995
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1941
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_1949:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1941
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1949
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_2001
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_1999:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1976
	cmp	rax, -3
	mov	r10, r12
	ja	.label_1946
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1946
.label_2002:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1948:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1994
	jge	.label_2003
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1994:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1948
.label_2003:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1952
	cmp	r12, r14
	jne	.label_1952
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_1952
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
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1967
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_1983:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1983
	jmp	.label_1967
.label_1947:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1951
.label_1952:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1972:
	mov	rax, r12
	test	rax, rax
	jle	.label_1966
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_1972
.label_1966:
	cmp	rax, rsi
	jge	.label_1942
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1945:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1942
	inc	rax
	cmp	rax, rsi
	jl	.label_1945
.label_1942:
	cmp	rax, rsi
	jne	.label_1950
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_1955
.label_1977:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1959
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1963
	jmp	.label_1970
	nop	dword ptr [rax]
.label_1985:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1970:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1973
.label_1990:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1980
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1980:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1985
	jmp	.label_1988
.label_1973:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1990
.label_1995:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1992
	mov	al, byte ptr [rsi + rdx]
.label_1992:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_2000
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_2000
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_2000:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1967
.label_1950:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1955
	test	rbp, rbp
	jle	.label_1953
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1953:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1955:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1967
.label_1959:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1971
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1968
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1981
.label_1997:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1981:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1997
	mov	rax, rcx
.label_1968:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1971
.label_1988:
	mov	r15, r14
.label_1963:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1971
.label_1989:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2005
.label_1976:
	mov	r10, r12
.label_1946:
	cmp	esi, -1
	jne	.label_1986
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1941:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_1944
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1954
.label_1982:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_1957
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1962
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1962
.label_1957:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1962:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1984
.label_1954:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1982
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1982
	mov	esi, dword ptr [rsp + 0x30]
.label_1984:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_1954
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_1987
.label_1986:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1993
.label_1965:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1964
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1964
	xor	ecx, ecx
.label_1964:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2004
.label_1944:
	mov	qword ptr [rbx + 0x30], rbp
.label_1987:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2004:
	test	rbp, rbp
	jne	.label_2007
.label_1958:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1967
.label_2007:
	jle	.label_1943
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1943:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1958
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_1958
.label_1993:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1964
	test	eax, eax
	je	.label_1965
	jmp	.label_1964
.label_2001:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1978
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1991:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1991
	jmp	.label_1996
.label_1978:
	mov	qword ptr [rsp + 0x18], r11
.label_1996:
	mov	r12, r10
	jmp	.label_1999
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4147d0

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
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_2010
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2009:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_2008
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_2010
	test	r9d, r9d
	jne	.label_2011
	mov	esi, edx
	and	esi, 4
	jne	.label_2008
.label_2011:
	test	r9d, r9d
	je	.label_2012
	mov	esi, edx
	and	esi, 8
	jne	.label_2008
.label_2012:
	test	r8d, r8d
	jne	.label_2013
	mov	esi, edx
	and	esi, 0x20
	jne	.label_2008
.label_2013:
	test	eax, eax
	jne	.label_2010
	test	dl, dl
	jns	.label_2010
	nop	dword ptr [rax]
.label_2008:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_2009
.label_2010:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414890

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
	jle	.label_2016
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2018:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_2014
	nop	word ptr [rax + rax]
.label_2015:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2015
.label_2014:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2017
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2017:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2018
.label_2016:
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
	#Procedure 0x414950

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
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_2040]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2041]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_2042
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2033
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_2042:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_2078
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_2021
.label_2078:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_2030
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_2021:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_2047
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2029
.label_2030:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_2033
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_2058
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2050:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2050
	jmp	.label_2058
.label_2059:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_2056
	nop	word ptr [rax + rax]
.label_2029:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_2049
	cmp	edx, 8
	jne	.label_2022
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_2022
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_2022
	nop	dword ptr [rax]
.label_2049:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_2022
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_2037
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_2039
.label_2037:
	test	ecx, 0x80000
	je	.label_2046
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_2046
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_2039:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_2022
.label_2046:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2022:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_2028
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_2028
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_2051
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2076
	nop	word ptr cs:[rax + rax]
.label_2083:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2080
	cmp	qword ptr [rcx], -1
	je	.label_2076
.label_2080:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_2083
.label_2076:
	cmp	rax, r14
	je	.label_2036
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_2025
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_2028:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_2055
	test	eax, 0x100000
	jne	.label_2066
	movzx	eax, al
	cmp	eax, 4
	jne	.label_2071
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2063
	cmp	r14, -1
	je	.label_2026
	cmp	rdi, -1
	je	.label_2026
	cmp	r14, rdi
	je	.label_2063
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_2026
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_2026
.label_2063:
	cmp	r14, rdi
	jne	.label_2045
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_2019
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2045
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_2072
	nop	word ptr cs:[rax + rax]
.label_2031:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2031
.label_2072:
	cmp	rcx, -1
	je	.label_2045
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_2068
	jmp	.label_2045
	nop	word ptr cs:[rax + rax]
.label_2055:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_2019
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_2023
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_2054:
	test	r10, r10
	jle	.label_2038
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_2065
	nop	dword ptr [rax + rax]
.label_2048:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_2048
.label_2065:
	cmp	rax, -1
	je	.label_2038
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_2038
	cmp	r14, -1
	jne	.label_2034
	mov	r14, rbx
.label_2038:
	inc	r15
	cmp	r15, r9
	jl	.label_2054
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2056
	nop	word ptr cs:[rax + rax]
.label_2066:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_2045:
	test	rdx, rdx
	jne	.label_2075
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_2071:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_2023
.label_2075:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_2061
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_2026
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_2026
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2026
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2035
.label_2044:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_2044
.label_2035:
	cmp	rbx, -1
	je	.label_2023
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_2023
.label_2061:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2052
.label_2034:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_2079
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_2057
	nop	word ptr [rax + rax]
.label_2073:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2073
.label_2057:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2059
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_2032
	mov	r14, rax
	jmp	.label_2056
.label_2079:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_2056
.label_2032:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2081
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2019
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2084
.label_2081:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_2084:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_2019
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_2060
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_2070
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2068
.label_2060:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2068:
	mov	rdx, qword ptr [rbp - 0x68]
.label_2052:
	mov	r13, qword ptr [rbp - 0x70]
.label_2056:
	test	r14, r14
	js	.label_2077
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_2062
.label_2077:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_2019
	nop	dword ptr [rax + rax]
.label_2023:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2020
.label_2026:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_2025
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_2062:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2029
	mov	rdi, qword ptr [rbp - 0x30]
.label_2047:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2069
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2069:
	xor	r14d, r14d
	test	r13, r13
	je	.label_2033
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_2058
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2082:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2082
.label_2058:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_2024
.label_2020:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_2067
.label_2051:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_2067:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2033
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_2024
.label_2036:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2043
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2043:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_2053
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2064:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2064
	jmp	.label_2053
.label_2070:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2019:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2074
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2074:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_2033
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_2053
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2027:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2027
.label_2053:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2024:
	call	free
.label_2033:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2025:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x415350

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2090
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2093
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2092
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2089:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2085
	dec	rsi
	test	rsi, rsi
	jg	.label_2089
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2086
.label_2092:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2086
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2086
	jmp	.label_2087
.label_2085:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2088
.label_2091:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2086
.label_2087:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2086
	xor	edx, edx
	jmp	.label_2086
.label_2090:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2086
.label_2093:
	and	edx, 2
	xor	edx, 0xa
.label_2086:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2088:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2086
	test	eax, eax
	jne	.label_2086
	jmp	.label_2091
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415420

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
	jle	.label_2094
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2095
.label_2096:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2094
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2098
	nop	word ptr [rax + rax]
.label_2095:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_2097
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2097
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2097
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2096
.label_2098:
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
	je	.label_2094
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_2097:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2095
.label_2094:
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
	#Procedure 0x415550

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
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2119
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2134:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_2102
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2107
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2149
	test	ecx, ecx
	je	.label_2102
.label_2149:
	test	bh, 8
	je	.label_2145
	test	ecx, ecx
	jne	.label_2102
.label_2145:
	test	bh, 0x20
	je	.label_2101
	mov	ecx, eax
	and	ecx, 2
	je	.label_2102
.label_2101:
	test	bpl, bpl
	jns	.label_2107
	and	eax, 8
	je	.label_2102
	nop	word ptr cs:[rax + rax]
.label_2107:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_2113
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_2128:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_2128
.label_2113:
	cmp	rax, r12
	jge	.label_2133
	cmp	rax, -1
	je	.label_2133
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_2133
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2144:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_2140
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2144
.label_2133:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_2146
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_2150
	nop	word ptr cs:[rax + rax]
.label_2147:
	mov	rax, qword ptr [r9]
.label_2150:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_2105
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_2115
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_2117
.label_2115:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_2120
.label_2114:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_2125
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_2127
	cmp	rax, r9
	jl	.label_2131
.label_2127:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_2132
	cmp	rcx, r9
	jge	.label_2132
.label_2131:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_2100
.label_2132:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_2142
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_2142:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_2152
	nop	word ptr cs:[rax + rax]
.label_2117:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2104
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_2114
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_2152:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_2124
.label_2104:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2100
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_2117
	jmp	.label_2120
.label_2124:
	mov	rax, qword ptr [r14 + 0x20]
.label_2125:
	mov	rdx, rbx
	mov	rdi, r15
.label_2120:
	cmp	r12, rax
	jge	.label_2143
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_2105
.label_2143:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_2105
	jmp	.label_2108
.label_2129:
	cmp	r14, -1
	je	.label_2110
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_2112
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2100
.label_2112:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_2130
	test	r13d, r13d
	jne	.label_2100
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_2138
.label_2151:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_2100
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2100
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_2126
.label_2106:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_2105
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_2100
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_2136
.label_2138:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_2100
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2151
	nop	dword ptr [rax + rax]
.label_2108:
	cmp	rbp, qword ptr [r14]
	jle	.label_2139
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_2106
	lea	rbx, [rdx + 1]
.label_2136:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_2105
.label_2139:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_2116
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2116
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2135:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_2099
	cmp	qword ptr [rdx + rdi], r10
	je	.label_2129
.label_2099:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2135
.label_2110:
	mov	rbx, r13
.label_2126:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_2130
	nop	word ptr cs:[rax + rax]
.label_2116:
	mov	r15, r14
	mov	rbx, r13
.label_2130:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_2108
	nop	dword ptr [rax]
.label_2105:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_2147
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_2146
.label_2140:
	mov	rax, r12
.label_2146:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_2102
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_2122:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2111
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_2111
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_2118
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2123
.label_2118:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_2123:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2141
	mov	rdx, qword ptr [rcx + 0x10]
.label_2141:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_2148
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2103
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2121
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_2121
	jmp	.label_2109
.label_2148:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2121
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_2137
	jmp	.label_2109
.label_2121:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_2137:
	cmp	rdx, rcx
	jne	.label_2111
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2111
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2109
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2109
	nop	
.label_2111:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_2122
	nop	word ptr [rax + rax]
.label_2102:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2134
.label_2119:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_2109
.label_2100:
	mov	dword ptr [rsp + 0xa4], r13d
.label_2109:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2103:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_2109
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ed0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_2157
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2157
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_2161
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_2157
	mov	qword ptr [r14 + 0xb8], rcx
.label_2161:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_2158
	cmp	eax, 2
	jl	.label_2162
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2156
	jmp	.label_2157
.label_2158:
	cmp	eax, 2
	jl	.label_2154
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_2156
.label_2162:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_2159
	jmp	.label_2163
.label_2153:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_2164
	nop	word ptr cs:[rax + rax]
.label_2163:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2153
.label_2164:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_2155
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_2155:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_2163
	mov	rbx, r15
.label_2159:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_2156
.label_2154:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_2156
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2160
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_2165
	nop	dword ptr [rax]
.label_2166:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2165:
	inc	rax
	cmp	rax, rcx
	jl	.label_2166
	mov	rax, rcx
.label_2160:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_2156:
	xor	eax, eax
.label_2157:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416090

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
	jle	.label_2169
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2167
.label_2169:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2171
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2170
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2174
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2175
.label_2171:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2167
.label_2170:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2175:
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
	jne	.label_2167
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2167:
	test	rbx, rbx
	je	.label_2173
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2172
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2168
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2168
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2168
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2168
.label_2173:
	mov	rax, rbx
	jmp	.label_2168
.label_2172:
	mov	rax, rbx
.label_2168:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2174:
	xor	eax, eax
	jmp	.label_2168
	nop	
	.section	.text
	.align	32
	#Procedure 0x4161e0

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
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_2180
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_2179
	test	r13, r13
	jle	.label_2179
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2179
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2185
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2186
.label_2179:
	test	r13, r13
	jle	.label_2180
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2181
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2188
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2182
.label_2180:
	test	r15, r15
	je	.label_2181
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2181
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_2181
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2188
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2182
.label_2181:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2182
.label_2187:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2186:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_2176
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_2178
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2186
	jmp	.label_2176
.label_2178:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2187
	jmp	.label_2184
.label_2176:
	mov	rbx, rcx
.label_2184:
	sub	r13, rbp
	jle	.label_2183
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2177
.label_2183:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_2177
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2177:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_2182:
	xor	ecx, ecx
.label_2185:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2188:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2185
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4163d0

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
	jne	.label_2191
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2194
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2192
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
.label_2194:
	test	r15, r15
	jle	.label_2195
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2196
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2196
.label_2195:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2196:
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
	jge	.label_2190
	mov	dword ptr [r13 + 0xe0], edi
.label_2190:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2193
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2197
.label_2193:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2189
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2189
.label_2197:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2191
.label_2189:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2191
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2191:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2192:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2191
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165b0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_2224
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_2225:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_2210
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2218
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_2228
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_2229
.label_2210:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_2233
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_2198
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_2203
.label_2233:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_2219
.label_2198:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_2217
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2218
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_2203
.label_2224:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_2200
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_2200
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2200
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_2225
.label_2217:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_2203:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_2219
.label_2229:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_2223
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_2228
.label_2223:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2231
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_2201
.label_2231:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_2219:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_2206
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_2204:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_2214
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_2209
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_2201
.label_2209:
	test	rbp, rbp
	je	.label_2220
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_2222
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2212:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2230
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2216
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_2205
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_2215
.label_2205:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_2211
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_2221
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_2221
	jmp	.label_2215
	nop	dword ptr [rax]
.label_2216:
	mov	r14, rbx
	test	eax, eax
	jne	.label_2221
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_2230:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_2199
.label_2221:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_2211
.label_2199:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_2212
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_2222:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_2220:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_2213
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_2201
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_2201
.label_2213:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2232
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_2201
.label_2232:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_2204
	jmp	.label_2207
.label_2206:
	mov	r14, r8
.label_2207:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_2202
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_2202
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_2208
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_2227:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2227
	jmp	.label_2226
.label_2211:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_2201
.label_2215:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_2201:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_2200
.label_2208:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_2226:
	cmp	rdx, -1
	je	.label_2202
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_2200
.label_2202:
	mov	r14d, 1
.label_2200:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2228:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_2200
.label_2218:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_2200
.label_2214:
	mov	r14, r8
	jmp	.label_2207
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416d70

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
	je	.label_2238
	test	r12, r12
	jle	.label_2241
	xor	r12d, r12d
	jmp	.label_2237
	nop	dword ptr [rax]
.label_2235:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2237
	jmp	.label_2241
	nop	
.label_2239:
	cmp	rbp, -1
	je	.label_2234
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2242
	nop	dword ptr [rax]
.label_2237:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2234
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2236:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2240
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2239
.label_2240:
	inc	rax
	cmp	rax, r10
	jl	.label_2236
.label_2234:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2242:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_2235
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2238
.label_2241:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2238:
	mov	eax, ebx
	add	rsp, 0x28
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
	#Procedure 0x416eb0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_2251
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_2274:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_2274
.label_2251:
	cmp	rdx, r9
	jge	.label_2244
	cmp	rdx, -1
	je	.label_2244
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2244
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_2269
.label_2250:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_2269:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2258:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_2243
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2248
	nop	word ptr cs:[rax + rax]
.label_2256:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_2256
.label_2248:
	cmp	rsi, -1
	je	.label_2243
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_2243
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2267
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2253
	nop	
.label_2249:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2249
.label_2253:
	cmp	rdx, -1
	je	.label_2254
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2254
	mov	rbp, r14
	jmp	.label_2264
.label_2267:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2265
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_2247
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_2273
	nop	dword ptr [rax + rax]
.label_2270:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2270
.label_2273:
	cmp	rdx, -1
	je	.label_2247
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2257
.label_2247:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_2261
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2268
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_2245
.label_2254:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2252
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_2246:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_2260
.label_2271:
	mov	r14, rbp
	jmp	.label_2264
.label_2265:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2255
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_2259
.label_2261:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_2245:
	xor	ebx, ebx
.label_2263:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2272
	xor	al, 1
	jne	.label_2272
.label_2259:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_2257:
	mov	r14, qword ptr [rsp + 0x28]
.label_2264:
	test	ecx, ecx
	je	.label_2243
	cmp	ecx, 4
	jne	.label_2266
	nop	dword ptr [rax + rax]
.label_2243:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2258
	jmp	.label_2244
.label_2252:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_2246
.label_2260:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_2271
.label_2272:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_2262
.label_2255:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_2262:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_2264
.label_2268:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_2263
.label_2266:
	cmp	ecx, 2
	je	.label_2250
	mov	eax, dword ptr [rsp + 0x24]
.label_2244:
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
	#Procedure 0x417340

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
	jmp	.label_2275
	nop	dword ptr [rax]
.label_2282:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2275:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2280
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2284
	nop	
.label_2276:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2276
.label_2284:
	cmp	rdx, -1
	je	.label_2280
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2279
.label_2280:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2283
	cmp	qword ptr [rax + rcx], r14
	je	.label_2277
.label_2283:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2278
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2281
	test	rcx, rcx
	jne	.label_2282
	jmp	.label_2279
	nop	dword ptr [rax]
.label_2281:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2278
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2282
.label_2277:
	cmp	r15d, 9
	jne	.label_2279
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2278
.label_2279:
	xor	eax, eax
.label_2278:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417450

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
	je	.label_2303
	mov	r15, r8
	jle	.label_2285
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2287
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2287
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_2295
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_2306:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_2306
	jmp	.label_2308
.label_2295:
	pxor	xmm1, xmm1
.label_2308:
	cmp	rbx, 0xc
	jb	.label_2298
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_2288:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_2288
.label_2298:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2285
.label_2287:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2289:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2289
.label_2285:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2293
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2291:
	test	r12, r12
	je	.label_2301
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2301
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2301
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2310:
	test	rdi, rdi
	jle	.label_2304
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2310
	nop	word ptr cs:[rax + rax]
.label_2301:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2291
.label_2293:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2297
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_2300
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2305
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_2286
.label_2300:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_2290
	lea	r14, [r12 + 0x10]
.label_2286:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2302:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_2299
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_2309
	cmp	esi, 4
	je	.label_2292
	cmp	esi, 2
	jne	.label_2294
	or	bl, 0x10
	jmp	.label_2296
.label_2292:
	or	bl, 0x40
	jmp	.label_2296
.label_2294:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2299
.label_2309:
	or	bl, 0x80
.label_2296:
	mov	byte ptr [r13 + 0x68], bl
.label_2299:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2302
.label_2290:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_2304
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2297
.label_2303:
	mov	dword ptr [r14], 0
	jmp	.label_2307
.label_2305:
	mov	rdi, r13
	call	free
.label_2297:
	mov	dword ptr [r14], 0xc
.label_2307:
	xor	r13d, r13d
.label_2304:
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
	#Procedure 0x4177a0

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
	je	.label_2333
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2327
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2327
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2335:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2327
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2335
.label_2327:
	cmp	r10d, 5
	jne	.label_2313
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2314
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2319
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_2314
.label_2319:
	test	al, al
	js	.label_2324
	mov	r14d, ebx
	jmp	.label_2314
.label_2313:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2314
	test	al, al
	je	.label_2314
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2330
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2330
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2311
.label_2330:
	cmp	r8d, 1
	jne	.label_2336
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2311
.label_2336:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2311:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2318
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2325:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2323
	inc	rdx
	cmp	rdx, rax
	jl	.label_2325
.label_2318:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2326
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2332:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2323
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2332
	mov	rsi, qword ptr [r15 + 0x40]
.label_2326:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2320
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2331:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2312
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2315
.label_2312:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2331
	jmp	.label_2320
.label_2323:
	mov	ecx, ebx
.label_2320:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2321
	mov	r14d, ecx
	jmp	.label_2314
.label_2321:
	test	ecx, ecx
	jg	.label_2314
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_2314
.label_2324:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2314
	mov	r14d, ebx
	jmp	.label_2314
.label_2333:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2329
.label_2314:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2315:
	mov	ecx, ebx
	jmp	.label_2320
.label_2329:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2314
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_2337
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2314
.label_2337:
	cmp	edi, 0xef
	ja	.label_2322
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_2316
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_2314
	jmp	.label_2316
.label_2322:
	cmp	edi, 0xf7
	ja	.label_2328
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2316
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_2314
	jmp	.label_2316
.label_2328:
	cmp	edi, 0xfb
	ja	.label_2334
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_2316
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_2314
	jmp	.label_2316
.label_2334:
	cmp	edi, 0xfd
	ja	.label_2314
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2316
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_2314
.label_2316:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2314
	add	rax, rcx
	mov	ecx, 1
.label_2317:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2314
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2314
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2317
	mov	r14d, esi
	jmp	.label_2314
	nop	
	.section	.text
	.align	32
	#Procedure 0x417a80

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_2338
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2343]]
.label_2933:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2342
	xor	eax, eax
	jmp	.label_2338
.label_2934:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_2342
	xor	eax, eax
	jmp	.label_2338
.label_2936:
	test	cl, cl
	js	.label_2340
.label_2935:
	test	cl, cl
	je	.label_2341
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_2342
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2342
	xor	eax, eax
	jmp	.label_2338
.label_2341:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2345
.label_2342:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2338
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2344
	test	ecx, ecx
	jne	.label_2344
	xor	eax, eax
	jmp	.label_2338
.label_2344:
	test	bh, 8
	je	.label_2346
	test	ecx, ecx
	je	.label_2346
	xor	eax, eax
	jmp	.label_2338
.label_2340:
	xor	eax, eax
	jmp	.label_2338
.label_2346:
	test	bh, 0x20
	je	.label_2339
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2339
	xor	eax, eax
	jmp	.label_2338
.label_2345:
	xor	eax, eax
	jmp	.label_2338
.label_2339:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2338:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417b70

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
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_2428
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2386
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2383:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_2347
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_2356
	nop	word ptr cs:[rax + rax]
.label_2347:
	cmp	r10d, 7
	je	.label_2367
	cmp	r10d, 5
	je	.label_2369
	cmp	r10d, 3
	jne	.label_2349
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2356
.label_2367:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2380
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2380:
	test	cl, cl
	jns	.label_2356
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2356
.label_2369:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2391
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2426
.label_2391:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_2426:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_2410
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2410:
	test	dl, dl
	jns	.label_2356
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_2356:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2381
	test	cl, 0x20
	je	.label_2413
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2349
	mov	qword ptr [rbp - 0x50], 0x400
.label_2413:
	test	cl, cl
	js	.label_2430
	test	cl, 4
	je	.label_2433
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2430
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2438
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_2442
.label_2438:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_2442:
	test	rdx, rdx
	je	.label_2349
.label_2433:
	test	cl, 8
	je	.label_2381
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_2375
	test	cl, cl
	jne	.label_2375
	nop	word ptr cs:[rax + rax]
.label_2430:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2349
.label_2375:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2416
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2397
.label_2416:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2397:
	test	rax, rax
	je	.label_2349
	nop	dword ptr [rax]
.label_2381:
	test	r14, r14
	jle	.label_2432
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_2444:
	cmp	edx, 1
	jne	.label_2439
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_2421
.label_2439:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_2445
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_2365
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2376
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2409
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2377
	nop	
.label_2445:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_2421
.label_2376:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_2377:
	inc	qword ptr [rbp - 0x78]
.label_2365:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_2435
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_2348
.label_2421:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_2444
	jmp	.label_2348
.label_2432:
	xor	edi, edi
.label_2348:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_2349
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2370
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2349:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_2383
	test	r14, r14
	jle	.label_2386
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2394
	test	rax, rax
	je	.label_2394
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2403
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_2408
.label_2409:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_2435:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_2357:
	mov	r14, -1
	test	r12, r12
	jle	.label_2386
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2425:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2425
	mov	rsi, r15
.label_2386:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_2431
	xor	eax, eax
	jmp	.label_2362
.label_2431:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2362
.label_2428:
	xor	eax, eax
	jmp	.label_2362
.label_2403:
	call	malloc
	test	rax, rax
	je	.label_2394
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_2408:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_2427:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_2361
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_2384:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2374
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_2354
	mov	rax, qword ptr [rbx]
.label_2374:
	inc	r15
	cmp	r15, rax
	jl	.label_2384
.label_2361:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2396
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2354
.label_2396:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2395
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2399
.label_2395:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2407
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2354
.label_2407:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_2411
	mov	al, 1
	cmp	dword ptr [r12 + 0xb4], 1
	jg	.label_2414
	mov	rax, qword ptr [rbp - 0xe0]
.label_2414:
	mov	qword ptr [rbp - 0xe0], rax
.label_2411:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2399
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_2354
.label_2399:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_2427
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_2446
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2354
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2358
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2363
.label_2368:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2368
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_2372
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2373
.label_2372:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2373:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2379
.label_2363:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2368
.label_2379:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2363
.label_2358:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2360
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2387
.label_2389:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2389
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_2393
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2398
.label_2393:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2398:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2402
.label_2387:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2389
.label_2402:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2387
.label_2360:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2406
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2418
.label_2415:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2415
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_2417
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2378
.label_2417:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2378:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2423
.label_2418:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_2415
.label_2423:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_2418
.label_2406:
	test	r13, r13
	je	.label_2400
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2429
.label_2441:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2441
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_2436
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2440
.label_2436:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2440:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2443
.label_2429:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2441
.label_2443:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_2429
.label_2400:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_2351
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2390:
	test	byte ptr [rdx + 1], 4
	jne	.label_2353
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_2390
	jmp	.label_2351
.label_2370:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_2357
.label_2394:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_2437
.label_2353:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2351
	mov	qword ptr [rax + 0x850], rcx
.label_2351:
	test	r11b, r11b
	je	.label_2371
	mov	rdi, r9
	call	free
.label_2371:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2424:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2424
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2362
.label_2446:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2354
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2388
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2392
.label_2354:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_2401
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2401:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_2404
.label_2437:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2412:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_2412
.label_2404:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_2362:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2419:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2419
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2422
.label_2392:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2419
.label_2422:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2392
.label_2388:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2434
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2352
.label_2350:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2350
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2420
.label_2352:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_2350
.label_2420:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2352
.label_2434:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2355
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2359
.label_2364:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2364
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2366
.label_2359:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2364
.label_2366:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_2359
.label_2355:
	test	r13, r13
	je	.label_2400
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2382
.label_2385:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2385
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2405
.label_2382:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_2385
.label_2405:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_2400
	jmp	.label_2382
	nop	
	.section	.text
	.align	32
	#Procedure 0x418b10

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1807]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2455
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2450
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_2458:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_2466
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2452
	xor	eax, eax
	jmp	.label_2461
	nop	word ptr [rax + rax]
.label_2452:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_2461:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2453
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2456
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2456
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2463:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2447
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2460
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_2462
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_2448
.label_2460:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2448
	jmp	.label_2447
.label_2462:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_2447
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2447
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2454
	nop	word ptr cs:[rax + rax]
.label_2459:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2459
.label_2454:
	test	eax, eax
	je	.label_2447
	cmp	rdi, -1
	je	.label_2447
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2448
.label_2447:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_2449
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2449
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2449
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2465
.label_2464:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2464
.label_2465:
	cmp	rsi, -1
	je	.label_2449
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2449
	nop	dword ptr [rax]
.label_2448:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2451
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_2449
.label_2451:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_2450
.label_2449:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2463
.label_2456:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2458
	jmp	.label_2450
.label_2466:
	xor	ebp, ebp
	jmp	.label_2450
.label_2453:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2450:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2457:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2455:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_2457
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418e60

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_2500
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2516
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_2522
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2489
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_2522
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2489
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2523:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2504
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2523
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2489:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_2478
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2516
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2521
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2508:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_2470
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_2470
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2475
	test	rax, rax
	jle	.label_2470
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2511:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2490
	cmp	ebx, 8
	jne	.label_2473
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2505
	mov	rbp, rsi
.label_2505:
	mov	rsi, rbp
	jmp	.label_2473
	nop	word ptr [rax + rax]
.label_2490:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2501
	mov	rbp, r14
.label_2501:
	mov	r14, rbp
.label_2473:
	add	rdx, 8
	dec	rax
	jne	.label_2511
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2514
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2482
.label_2514:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_2470
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2470
	nop	word ptr cs:[rax + rax]
.label_2528:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2467
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2479
	nop	word ptr [rax + rax]
.label_2486:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_2486
.label_2479:
	cmp	rax, -1
	je	.label_2467
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2497
.label_2467:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2498
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2507
	nop	word ptr [rax + rax]
.label_2506:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2506
.label_2507:
	cmp	rax, -1
	je	.label_2498
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2497
.label_2498:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2482
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2497:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2528
	jmp	.label_2470
.label_2475:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2532
	jmp	.label_2470
	nop	dword ptr [rax]
.label_2530:
	mov	rcx, qword ptr [r12]
.label_2532:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2476
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2476
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2482
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_2476:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2530
	nop	word ptr [rax + rax]
.label_2470:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2508
.label_2521:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2516:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2520
	jmp	.label_2478
.label_2500:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2520:
	test	rbx, rbx
	je	.label_2484
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2484
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_2474
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_2481:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_2481
.label_2474:
	cmp	r15, rbp
	jge	.label_2487
	cmp	r15, -1
	je	.label_2487
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2487
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2509
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_2518:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_2525
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2472
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2477
	jmp	.label_2472
.label_2525:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2472
.label_2477:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2515:
	cmp	qword ptr [rbx], rbp
	jne	.label_2485
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2493
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2499
	nop	
.label_2493:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2499:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2485
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2485
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2485
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2513
	nop	word ptr [rax + rax]
.label_2517:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2517
.label_2513:
	cmp	rdx, -1
	je	.label_2495
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2495
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2531
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_2468
.label_2495:
	mov	r10, r12
	jmp	.label_2468
.label_2531:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_2480
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_2483
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2519
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_2480
.label_2483:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2480:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_2492
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2492
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2488
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2496
	nop	dword ptr [rax]
.label_2526:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2512
	test	rdx, rdx
	je	.label_2510
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2492
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_2510
	jmp	.label_2492
.label_2512:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2510:
	inc	r13
	cmp	r13, rcx
	jl	.label_2526
.label_2496:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2488:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_2471
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2529
	nop	dword ptr [rax + rax]
.label_2469:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2469
.label_2529:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2502
	mov	rdi, -1
.label_2502:
	test	rdi, rdi
	js	.label_2471
	cmp	r12, rdi
	jle	.label_2471
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_2471
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2503
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2503
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2491
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2491:
	test	r11, r11
	je	.label_2527
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2494:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_2494
.label_2527:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_2471
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2503:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2503
.label_2471:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_2468:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_2485:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2515
.label_2472:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2518
.label_2492:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2524
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2524:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_2484
	jmp	.label_2478
.label_2487:
	mov	dword ptr [rsp + 0x6c], 0
.label_2484:
	xor	r12d, r12d
.label_2478:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2482:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2478
.label_2504:
	mov	dword ptr [rsp + 0x70], eax
.label_2522:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2478
.label_2509:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_2484
.label_2519:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2492
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419950

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2539
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2539
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2551
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2539
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2550
.label_2551:
	lea	r8, [r12 + 0x10]
.label_2550:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2548:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2534:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2535:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2533
	jl	.label_2537
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2535
	jmp	.label_2540
	nop	word ptr cs:[rax + rax]
.label_2537:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2534
	jmp	.label_2540
	nop	dword ptr [rax + rax]
.label_2533:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2541
	nop	dword ptr [rax + rax]
.label_2536:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2542
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2536
	jmp	.label_2541
.label_2542:
	test	rsi, rsi
	js	.label_2541
	cmp	rcx, rax
	je	.label_2543
	nop	
.label_2541:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2543:
	test	rdx, rdx
	jle	.label_2540
	cmp	rdi, 2
	jge	.label_2548
.label_2540:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_2546
	test	rax, rax
	js	.label_2546
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2547:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2538:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2545
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2538
	jmp	.label_2544
.label_2545:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2547
	jmp	.label_2549
.label_2546:
	mov	rdi, qword ptr [r8]
.label_2544:
	mov	rdx, r10
.label_2549:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2539:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419b20

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2560
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2561:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2552
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2552
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2574
	mov	r10, qword ptr [rcx + 8]
.label_2574:
	test	r9, r9
	jle	.label_2569
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2570
	nop	word ptr [rax + rax]
.label_2562:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2562
.label_2570:
	cmp	rbp, -1
	je	.label_2569
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2554
.label_2569:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2554
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2556
	nop	word ptr cs:[rax + rax]
.label_2563:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2563
.label_2556:
	cmp	rcx, -1
	je	.label_2554
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2573
.label_2554:
	test	r10, r10
	jle	.label_2552
	test	r9, r9
	jle	.label_2559
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2576
	nop	word ptr [rax + rax]
.label_2553:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2553
.label_2576:
	cmp	rcx, -1
	je	.label_2559
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2552
.label_2559:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2552
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2565
	nop	word ptr cs:[rax + rax]
.label_2571:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2571
.label_2565:
	cmp	rcx, -1
	je	.label_2552
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2552
.label_2573:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2557
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2552:
	inc	r13
	cmp	r13, r9
	jl	.label_2561
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2560
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2567:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2558
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2578
	nop	word ptr cs:[rax + rax]
.label_2575:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2575
.label_2578:
	cmp	rcx, -1
	je	.label_2558
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2555
.label_2558:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2555
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2568
	nop	dword ptr [rax + rax]
.label_2564:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2564
.label_2568:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2579
	mov	rax, -1
.label_2579:
	test	rax, rax
	js	.label_2555
	cmp	r14, rax
	jle	.label_2555
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2555
.label_2566:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2566
	nop	word ptr cs:[rax + rax]
.label_2555:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2567
	jmp	.label_2572
.label_2560:
	lea	r8, [rsp + 0x30]
.label_2572:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2577:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2557:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2577
	nop	
	.section	.text
	.align	32
	#Procedure 0x419e80

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
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2580
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_2588:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2588
.label_2580:
	cmp	r14, rax
	jge	.label_2592
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2593
.label_2592:
	mov	r14, -1
.label_2593:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_2586
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_2590:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2590
.label_2586:
	cmp	r12, rax
	jge	.label_2587
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_2589
.label_2587:
	mov	r12, -1
.label_2589:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2591
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2581:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_2585
	mov	ebx, 0xffffffff
	jmp	.label_2582
	nop	word ptr cs:[rax + rax]
.label_2585:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_2582
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2582
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2582:
	cmp	r11, r9
	jg	.label_2583
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2583
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_2583
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_2583:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2584
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2581
	xor	eax, eax
	jmp	.label_2584
.label_2591:
	xor	eax, eax
.label_2584:
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
	#Procedure 0x41a0f0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2605
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2595:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2600
	cmp	eax, 8
	je	.label_2604
	cmp	eax, 4
	jne	.label_2596
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2596
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2594:
	cmp	qword ptr [r14], r12
	jne	.label_2602
	cmp	rbx, 0x3f
	jg	.label_2607
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2602
.label_2607:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2599
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2606
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2597
	cmp	rbx, 0x3f
	jg	.label_2602
	jmp	.label_2598
.label_2606:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2598
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2602
	jmp	.label_2597
.label_2598:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2602:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2594
	jmp	.label_2596
	nop	word ptr cs:[rax + rax]
.label_2600:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2596
	xor	eax, eax
	jmp	.label_2603
	nop	dword ptr [rax + rax]
.label_2604:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2596
	mov	eax, 0xffffffff
.label_2603:
	cmp	qword ptr [rcx], rbx
	je	.label_2597
.label_2596:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2595
.label_2605:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2601
.label_2599:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2601:
	mov	eax, r13d
.label_2597:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a300

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_2608
	nop	word ptr [rax + rax]
.label_2611:
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
	je	.label_2609
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_2611
	jmp	.label_2610
.label_2609:
	movzx	ecx, cl
	xor	eax, eax
.label_2610:
	sub	eax, ecx
.label_2608:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a350

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
	jne	.label_2613
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2612
	test	cl, cl
	jne	.label_2612
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2612
.label_2613:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2612
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2612:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a3b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2615
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2616
	cmp	byte ptr [rax + 1], 0
	je	.label_2614
.label_2616:
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2615
.label_2614:
	xor	ebx, ebx
.label_2615:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a3f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_10
	cmp	byte ptr [rcx], 0
	je	.label_2617
	mov	rax, rcx
.label_2617:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a420

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
	jne	.label_2624
	cmp	byte ptr [rbx + 8], 0
	je	.label_2620
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
	jmp	.label_2628
.label_2620:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_2623
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_2621
.label_2623:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2622
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
.label_2628:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_2625
	test	rax, rax
	je	.label_2627
	cmp	rax, -1
	jne	.label_2618
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2621
.label_2625:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2621
.label_2627:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2619
	cmp	dword ptr [r12], 0
	jne	.label_2626
.label_2618:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2621
	mov	byte ptr [rbx + 8], 0
.label_2621:
	mov	byte ptr [rbx + 0x14], 1
.label_2624:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2619:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2626:
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2622:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a570
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a580
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
	je	.label_2629
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_2631
.label_2629:
	mov	qword ptr [r14 + 0xc], 0
.label_2631:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_2632
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2632:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_2630
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2630:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a600

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	rbp, rsi
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2640
	mov	qword ptr [rsp + 0x148], rbp
	mov	qword ptr [rsp + 0x28], rbp
	mov	byte ptr [rsp + 0x138], 0
	mov	qword ptr [rsp + 0x13c], 0
	mov	byte ptr [rsp + 0x144], 0
	lea	rdi, [rsp + 0x138]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x158]
	test	al, al
	je	.label_2637
	shr	rax, 0x20
	jne	.label_2637
	mov	rax, rbx
	jmp	.label_2638
.label_2640:
	mov	cl, byte ptr [rbp]
	test	cl, cl
	mov	r11, rbp
	je	.label_2653
	mov	rbp, rbx
	mov	r14b, byte ptr [rbp]
	xor	eax, eax
	test	r14b, r14b
	je	.label_2638
	mov	r10b, 1
	xor	r9d, r9d
	movzx	r12d, cl
	mov	rdi, r11
	xor	r13d, r13d
	xor	r15d, r15d
.label_2668:
	cmp	r15, 0xa
	jb	.label_2663
	mov	al, r10b
	and	al, 1
	je	.label_2665
	lea	rax, [r15 + r15*4]
	cmp	r13, rax
	jb	.label_2667
	mov	qword ptr [rsp + 0x20], r10
	mov	rbx, rbp
	test	rdi, rdi
	je	.label_2659
	mov	rsi, r13
	sub	rsi, r9
	mov	rbp, r11
	mov	qword ptr [rsp + 0x18], rdi
	call	strnlen
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r11, rbp
	cmp	byte ptr [rdi + rax], 0
	mov	r9, r13
	mov	r10, qword ptr [rsp + 0x20]
	je	.label_2659
	add	rdi, rax
	mov	r9, r13
	jne	.label_2634
.label_2659:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, r9
	mov	rdi, r11
	mov	rbp, r11
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0x138]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_2644
	mov	r14b, byte ptr [rbx]
	xor	r10d, r10d
	xor	edi, edi
	mov	r11, rbp
	mov	r9, r13
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_2634
.label_2667:
	mov	rbx, rbp
	jmp	.label_2634
.label_2663:
	mov	rbx, rbp
	jmp	.label_2634
.label_2665:
	mov	rbx, rbp
.label_2634:
	movzx	eax, r14b
	cmp	eax, r12d
	mov	eax, 1
	mov	rbp, rbx
	jne	.label_2648
	nop	word ptr cs:[rax + rax]
.label_2660:
	mov	rcx, rax
	mov	dl, byte ptr [r11 + rcx]
	test	dl, dl
	je	.label_2654
	mov	bl, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_2638
	movzx	edx, dl
	movzx	esi, bl
	lea	rax, [rcx + 1]
	cmp	esi, edx
	je	.label_2660
	lea	r13, [r13 + rcx + 1]
	jmp	.label_2664
	nop	word ptr cs:[rax + rax]
.label_2648:
	inc	r13
.label_2664:
	inc	r15
	mov	r14b, byte ptr [rbp + 1]
	inc	rbp
	test	r14b, r14b
	mov	eax, 0
	jne	.label_2668
	jmp	.label_2638
.label_2637:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x108], rax
	mov	byte ptr [rsp + 0xf8], 0
	mov	qword ptr [rsp + 0xfc], 0
	mov	byte ptr [rsp + 0x104], 0
	mov	qword ptr [rsp + 0xc8], rbx
	mov	byte ptr [rsp + 0xb8], 0
	mov	qword ptr [rsp + 0xbc], 0
	mov	byte ptr [rsp + 0xc4], 0
	lea	rdi, [rsp + 0xb8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xd8]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	je	.label_2646
	shr	rax, 0x20
	je	.label_2650
.label_2646:
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r13, [rsp + 0xf8]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r12d, r12d
.label_2657:
	mov	r15, r14
	cmp	r12, 0xa
	jb	.label_2652
	mov	eax, dword ptr [rsp + 0x18]
	and	al, 1
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_2655
	lea	rax, [r12 + r12*4]
	mov	qword ptr [rsp + 0x20], r12
	cmp	r15, rax
	jb	.label_2641
	mov	r14, rsi
	cmp	r15, rbp
	je	.label_2661
	sub	rbp, r15
	nop	
.label_2669:
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x118]
	test	al, al
	je	.label_2666
	shr	rax, 0x20
	je	.label_2661
.label_2666:
	mov	rax, qword ptr [rsp + 0x110]
	add	qword ptr [rsp + 0x108], rax
	mov	byte ptr [rsp + 0x104], 0
	inc	rbp
	jne	.label_2669
.label_2661:
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x118]
	test	al, al
	je	.label_2670
	shr	rax, 0x20
	mov	rbp, r15
	mov	rsi, r14
	jne	.label_2641
	mov	rdi, rbx
	mov	r14, rsi
	lea	rdx, [rsp + 0x70]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_2639
	mov	dword ptr [rsp + 0x18], 0
.label_2670:
	mov	rbp, r15
	mov	rsi, r14
	jmp	.label_2641
.label_2652:
	mov	qword ptr [rsp + 0x20], r12
	mov	rsi, qword ptr [rsp + 0x28]
	jmp	.label_2641
.label_2655:
	mov	qword ptr [rsp + 0x20], r12
.label_2641:
	mov	qword ptr [rsp + 0x28], rsi
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0xd8]
	test	al, al
	je	.label_2647
	mov	rcx, qword ptr [rsp + 0x158]
	test	cl, cl
	je	.label_2647
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_2649
	jmp	.label_2633
	nop	word ptr cs:[rax + rax]
.label_2647:
	mov	rdx, qword ptr [rsp + 0xd0]
	cmp	rdx, qword ptr [rsp + 0x150]
	jne	.label_2633
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rsi, qword ptr [rsp + 0x148]
	call	memcmp
	test	eax, eax
	jne	.label_2633
.label_2649:
	movups	xmm0, xmmword ptr [rsp + 0xb8]
	movups	xmm1, xmmword ptr [rsp + 0xc8]
	movups	xmm2, xmmword ptr [rsp + 0xd8]
	movups	xmm3, xmmword ptr [rsp + 0xe8]
	movaps	xmmword ptr [rsp + 0xa0], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rax, qword ptr [rsp + 0x88]
	add	qword ptr [rsp + 0x80], rax
	mov	byte ptr [rsp + 0x7c], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x40], rax
	mov	byte ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x34], 0
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_2642
	shr	rax, 0x20
	je	.label_2643
.label_2642:
	mov	rax, qword ptr [rsp + 0x48]
	add	qword ptr [rsp + 0x40], rax
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_2636
	shr	rax, 0x20
	je	.label_2651
.label_2636:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_2645:
	lea	rdi, [rsp + 0x70]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_2656
	test	eax, eax
	je	.label_2650
.label_2656:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_2662
	test	dl, dl
	jne	.label_2662
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_2635
	mov	r15, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x48]
	jmp	.label_2658
	nop	
.label_2662:
	mov	r13, qword ptr [rsp + 0x88]
	cmp	r13, qword ptr [rsp + 0x48]
	jne	.label_2635
	mov	r15, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_2635
.label_2658:
	add	r15, rax
	mov	qword ptr [rsp + 0x80], r15
	mov	byte ptr [rsp + 0x7c], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x40], r12
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	inc	r14
	test	al, al
	je	.label_2645
	shr	rax, 0x20
	jne	.label_2645
	jmp	.label_2651
.label_2635:
	lea	r13, [rsp + 0xf8]
	nop	dword ptr [rax]
.label_2633:
	mov	r12, qword ptr [rsp + 0x20]
	inc	r12
	mov	rax, qword ptr [rsp + 0xd0]
	add	qword ptr [rsp + 0xc8], rax
	mov	byte ptr [rsp + 0xc4], 0
	lea	rdi, [rsp + 0xb8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xd8]
	test	al, al
	je	.label_2657
	shr	rax, 0x20
	jne	.label_2657
.label_2650:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_2638
.label_2653:
	mov	rax, rbx
	jmp	.label_2638
.label_2654:
	mov	rax, rbp
	jmp	.label_2638
.label_2651:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_2638:
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2644:
	mov	rax, qword ptr [rsp + 0x138]
	jmp	.label_2638
.label_2639:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_2638
.label_2643:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ac00

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
	sub	rsp, 0xb8
	mov	r12, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, r14
	call	mbslen
	mov	r15, rax
	movabs	rax, 0x249249249249249
	cmp	r15, rax
	jbe	.label_2683
	xor	eax, eax
	jmp	.label_2686
.label_2683:
	imul	rdi, r15, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2694
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rax, [rax + rdi + 0x1f]
	and	rax, 0xffffffffffffffe0
	jmp	.label_2698
.label_2694:
	call	mmalloca
.label_2698:
	test	rax, rax
	je	.label_2687
	mov	qword ptr [rbp - 0xe0], rbx
	mov	r13, rax
	mov	qword ptr [rbp - 0xd8], r12
	lea	rax, [r15 + r15*2]
	shl	rax, 4
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x58], r14
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_2693
	shr	rax, 0x20
	je	.label_2695
.label_2693:
	lea	rbx, [rbp - 0x40]
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0x68]
	nop	word ptr cs:[rax + rax]
.label_2688:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, rbx
	jne	.label_2700
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rax, r14
.label_2700:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_2702
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_2702:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	add	r14, 0x30
	test	al, al
	je	.label_2688
	shr	rax, 0x20
	jne	.label_2688
.label_2695:
	mov	r12, r13
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [r12 + rax]
	mov	qword ptr [r12 + rax + 8], 1
	mov	ecx, 2
	xor	ebx, ebx
	cmp	r15, 3
	mov	qword ptr [rbp - 0xc8], r15
	jb	.label_2696
.label_2697:
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	lea	rcx, [rax + r12 - 0x30]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r15b, byte ptr [rax + r12 - 0x20]
	lea	r14, [rax + r12 - 0x28]
	lea	rax, [rax + r12 - 0x1c]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2676
	nop	word ptr cs:[rax + rax]
.label_2675:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2676:
	test	r15b, r15b
	je	.label_2691
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r12 + rax + 0x10], 0
	je	.label_2691
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	ecx, dword ptr [rcx]
	cmp	ecx, dword ptr [r12 + rax + 0x14]
	jne	.label_2692
	jmp	.label_2672
	nop	dword ptr [rax + rax]
.label_2691:
	mov	rdx, qword ptr [r14]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r12 + rax + 8]
	jne	.label_2692
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rcx]
	mov	r13, rsi
	mov	rsi, qword ptr [r12 + rax]
	call	memcmp
	mov	rsi, r13
	test	eax, eax
	je	.label_2672
.label_2692:
	test	rbx, rbx
	jne	.label_2675
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rcx*8], rcx
	xor	ebx, ebx
	jmp	.label_2678
	nop	word ptr cs:[rax + rax]
.label_2672:
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, rcx
	sub	rax, rbx
	mov	qword ptr [rsi + rcx*8], rax
.label_2678:
	inc	rcx
	cmp	rcx, qword ptr [rbp - 0xc8]
	jne	.label_2697
.label_2696:
	mov	r13, r12
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	mov	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xa4], 0
	mov	byte ptr [rbp - 0x9c], 0
	lea	rdi, [rbp - 0xa8]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2690
	test	eax, eax
	je	.label_2685
.label_2690:
	xor	r15d, r15d
	lea	rbx, [rbp - 0xa8]
	nop	word ptr [rax + rax]
.label_2689:
	lea	rdx, [r15 + r15*2]
	shl	rdx, 4
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_2679
	xor	cl, 1
	test	cl, 1
	jne	.label_2679
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_2681
	mov	r12, qword ptr [rbp - 0x98]
	mov	r14, qword ptr [rbp - 0x90]
	jmp	.label_2680
	nop	word ptr cs:[rax + rax]
.label_2679:
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0x90]
	jne	.label_2681
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0x98]
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_2680
.label_2681:
	test	r15, r15
	je	.label_2674
	mov	r14, rbx
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	test	rbx, rbx
	lea	r12, [rbp - 0x68]
	je	.label_2699
	nop	dword ptr [rax]
.label_2673:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_2684
	shr	rax, 0x20
	je	.label_2671
.label_2684:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	dec	rbx
	jne	.label_2673
	mov	rbx, r14
	jmp	.label_2682
.label_2680:
	inc	r15
	add	r12, r14
	mov	qword ptr [rbp - 0x98], r12
	mov	byte ptr [rbp - 0x9c], 0
	cmp	r15, qword ptr [rbp - 0xc8]
	jne	.label_2682
	jmp	.label_2701
	nop	
.label_2674:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_2677
	shr	rax, 0x20
	je	.label_2671
.label_2677:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0x9c], 0
	xor	r15d, r15d
	jmp	.label_2682
.label_2699:
	mov	rbx, r14
.label_2682:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2689
	test	eax, eax
	jne	.label_2689
	jmp	.label_2685
.label_2687:
	xor	eax, eax
	jmp	.label_2686
.label_2701:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rcx], rax
.label_2685:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_2686:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2671:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b060

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2712
	xor	eax, eax
	jmp	.label_2704
.label_2712:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_2718
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2711
.label_2718:
	call	mmalloca
	mov	rdi, rax
.label_2711:
	test	rdi, rdi
	je	.label_2705
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	xor	ecx, ecx
	cmp	r12, 3
	jb	.label_2707
	nop	
.label_2715:
	movzx	edx, byte ptr [rax + r13 - 1]
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_2703
.label_2717:
	test	rcx, rcx
	je	.label_2716
	sub	rcx, qword ptr [rdi + rcx*8]
	movzx	esi, byte ptr [r13 + rcx]
	movzx	ebx, dl
	cmp	ebx, esi
	jne	.label_2717
.label_2703:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
	jmp	.label_2706
	nop	word ptr cs:[rax + rax]
.label_2716:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_2706:
	inc	rax
	cmp	rax, r12
	jne	.label_2715
.label_2707:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rax, r15
	jmp	.label_2714
.label_2705:
	xor	eax, eax
	jmp	.label_2704
.label_2713:
	mov	rdx, qword ptr [rdi + rcx*8]
	add	r15, rdx
	sub	rcx, rdx
	nop	word ptr [rax + rax]
.label_2714:
	mov	dl, byte ptr [rax]
	test	dl, dl
	je	.label_2708
	movzx	esi, byte ptr [r13 + rcx]
	movzx	edx, dl
	cmp	esi, edx
	jne	.label_2710
	inc	rcx
	inc	rax
	cmp	r12, rcx
	jne	.label_2714
	jmp	.label_2709
.label_2710:
	test	rcx, rcx
	jne	.label_2713
	inc	r15
	inc	rax
	xor	ecx, ecx
	jmp	.label_2714
.label_2709:
	mov	qword ptr [r14], r15
.label_2708:
	call	freea
	mov	al, 1
.label_2704:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x41b1a0

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
	jne	.label_2722
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_2725
	lea	r14, [rbx + 4]
	jmp	.label_2721
.label_2725:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_2719
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2720
.label_2719:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2729
	mov	byte ptr [rbx], 1
.label_2721:
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
	je	.label_2724
	test	rax, rax
	je	.label_2727
	cmp	rax, -1
	jne	.label_2728
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2720
.label_2724:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2720
.label_2727:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2723
	cmp	dword ptr [r12], 0
	jne	.label_2726
.label_2728:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2720
	mov	byte ptr [rbx], 0
.label_2720:
	mov	byte ptr [rbx + 0xc], 1
.label_2722:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2723:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2726:
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2729:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b2f0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b300
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
	je	.label_2730
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_2731
.label_2730:
	mov	qword ptr [r14 + 4], 0
.label_2731:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_2732
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2732:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_2733
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_2733:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b380

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1058
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, rdx
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	qword ptr [rsp + 0x10], r14
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x48], rbp
	test	rbp, rbp
	je	.label_2744
	xor	ebx, ebx
	lea	r12, [rsp + 0x58]
	lea	r14, [rsp + 0x50]
	lea	rbp, [rsp + 0x48]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x38]
.label_2745:
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_2738
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	jne	.label_2742
.label_2738:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_2745
.label_2744:
	lea	r14, [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_2743
	sub	rbx, r14
	add	rbx, qword ptr [rsp + 0x40]
	jmp	.label_2747
.label_2743:
	mov	ebp, 1
	jmp	.label_2747
.label_2742:
	cmp	eax, 0x16
	je	.label_2744
	mov	ebp, 1
.label_2747:
	mov	r12d, 0xffffffff
	test	ebp, ebp
	jne	.label_2734
	test	rbx, rbx
	je	.label_2737
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_2740
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], rbx
	jae	.label_2746
.label_2740:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2741
.label_2746:
	mov	qword ptr [rsp + 8], rbp
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x48], rbp
	mov	qword ptr [rsp + 0x40], rbx
	test	rax, rax
	je	.label_2739
	lea	r13, [rsp + 0x58]
	lea	rbp, [rsp + 0x50]
	lea	r15, [rsp + 0x48]
	lea	r14, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_2749:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_2735
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2749
	jmp	.label_2739
.label_2737:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], 0
	xor	r12d, r12d
	jmp	.label_2734
.label_2741:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2734
.label_2735:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2748
.label_2739:
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x40]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_2748
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_2736
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
	jmp	.label_2734
.label_2748:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 8]
	cmp	rbp, qword ptr [rax]
	je	.label_2734
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_2734:
	mov	eax, r12d
	add	rsp, 0x1058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2736:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b5f0

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
	je	.label_2762
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2759
	mov	r13, r12
	mov	rbx, rbp
.label_2751:
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2758
	mov	r12, r13
	mov	rbp, rbx
.label_2763:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_2752
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_2752
.label_2762:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_2752
.label_2759:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_2761:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_2750
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_2753
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2760
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_2761
	jmp	.label_2751
.label_2758:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_2756:
	cmp	dword ptr [r15], 7
	jne	.label_2757
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_2755
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2755
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_2756
	jmp	.label_2763
.label_2755:
	mov	dword ptr [r15], 0xc
	mov	r12, r13
	jmp	.label_2754
.label_2750:
	cmp	eax, 0x16
	mov	r13, r12
	mov	rbx, rbp
	je	.label_2751
	jmp	.label_2754
.label_2753:
	mov	dword ptr [r15], 0xc
	jmp	.label_2754
.label_2760:
	mov	dword ptr [r15], 0xc
	jmp	.label_2754
.label_2757:
	mov	r12, r13
.label_2754:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
	xor	r12d, r12d
.label_2752:
	mov	rax, r12
	add	rsp, 0x28
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
	#Procedure 0x41b860

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
	je	.label_2764
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_2764
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_2766
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_2767
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_2766
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_2768
.label_2764:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_2766
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2765
.label_2767:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_2768:
	mov	dword ptr [rbx], ebp
.label_2765:
	xor	r14d, r14d
.label_2766:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b910

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b950

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
	#Procedure 0x41b970

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_2769
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2769
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_2769:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b9b0

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_2770
	test	dil, 0x10
	jne	.label_2771
	ret	
.label_2771:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2770:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b9d0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2772
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_2772:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b9f0
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
	jne	.label_2773
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2773:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2774
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2774:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ba40
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x41ba60

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2778
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_2777
	shr	rax, 0x20
	je	.label_2775
.label_2777:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_2776:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_2776
	shr	rax, 0x20
	jne	.label_2776
.label_2775:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_2778:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
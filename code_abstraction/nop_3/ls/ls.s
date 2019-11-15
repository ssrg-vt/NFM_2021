	.section	.text
	.align	32
	#Procedure 0x402800

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.1
	movabs	rsi, OFFSET FLAT:.str.2
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.1
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x60], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rsi, 0x8000000000000000
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	byte ptr [byte ptr [print_dir_name]],  1
	mov	qword ptr [word ptr [pending_dirs]],  0
	mov	qword ptr [word ptr [current_time]],  rsi
	mov	qword ptr [word ptr [label_40]],  -1
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	decode_switches
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_50
	call	parse_ls_color
.label_50:
	test	byte ptr [byte ptr [directories_first]],  1
	je	.label_54
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
	jmp	.label_36
.label_54:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_9
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_14
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_42
	jmp	.label_19
.label_42:
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_14
.label_19:
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_26
	jmp	.label_29
.label_26:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_29
.label_14:
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
.label_29:
	jmp	.label_9
.label_9:
	jmp	.label_36
.label_36:
	cmp	dword ptr [dword ptr [dereference]],  1
	jne	.label_38
	mov	al, 1
	test	byte ptr [byte ptr [immediate_dirs]],  1
	mov	byte ptr [rbp - 0x65], al
	jne	.label_41
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  3
	mov	byte ptr [rbp - 0x65], al
	je	.label_41
	cmp	dword ptr [dword ptr [format]],  0
	sete	al
	mov	byte ptr [rbp - 0x65], al
.label_41:
	mov	al, byte ptr [rbp - 0x65]
	mov	ecx, 4
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [dword ptr [dereference]],  ecx
.label_38:
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_51
	mov	eax, 0x1e
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_ino_hash
	movabs	rcx, OFFSET FLAT:dev_ino_compare
	movabs	r8, OFFSET FLAT:dev_ino_free
	call	hash_initialize
	mov	qword ptr [word ptr [active_dir_set]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	jne	.label_12
	call	xalloc_die
.label_12:
	movabs	rdi, OFFSET FLAT:dev_ino_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	call	_obstack_begin
	mov	dword ptr [rbp - 0x74], eax
.label_51:
	movabs	rdi, OFFSET FLAT:.str_1
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	cl, 1
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x75], cl
	je	.label_39
	mov	al, 1
	cmp	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x75], al
	je	.label_39
	mov	al, 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x75], al
	je	.label_39
	mov	al, 1
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	byte ptr [rbp - 0x75], al
	jne	.label_39
	mov	al,  byte ptr [byte ptr [print_block_size]]
	mov	byte ptr [rbp - 0x75], al
.label_39:
	mov	al, byte ptr [rbp - 0x75]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_stat]],  al
	test	byte ptr [byte ptr [format_needs_stat]],  1
	mov	byte ptr [rbp - 0x76], dl
	jne	.label_52
	mov	al, 1
	test	byte ptr [byte ptr [recursive]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_7
	mov	al, 1
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_7
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [rbp - 0x77], al
	jne	.label_7
	mov	al,  byte ptr [byte ptr [directories_first]]
	mov	byte ptr [rbp - 0x77], al
.label_7:
	mov	al, byte ptr [rbp - 0x77]
	mov	byte ptr [rbp - 0x76], al
.label_52:
	mov	al, byte ptr [rbp - 0x76]
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_type]],  al
	test	byte ptr [byte ptr [dired]],  1
	je	.label_23
	movabs	rdi, OFFSET FLAT:dired_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	call	_obstack_begin
	movabs	rdi, OFFSET FLAT:subdired_obstack
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x8c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x90], eax
.label_23:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_16
	call	file_escape_init
	call	xgethostname
	mov	qword ptr [word ptr [hostname]],  rax
	cmp	qword ptr [word ptr [hostname]],  0
	jne	.label_57
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [hostname]],  rax
.label_57:
	jmp	.label_16
.label_16:
	mov	eax, 0xc8
	mov	esi, eax
	mov	qword ptr [word ptr [cwd_n_alloc]],  0x64
	mov	rdi,  qword ptr [word ptr [cwd_n_alloc]]
	call	xnmalloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	qword ptr [word ptr [cwd_n_used]],  0
	call	clear_files
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x24], 0
	jg	.label_31
	test	byte ptr [byte ptr [immediate_dirs]],  1
	je	.label_34
	movabs	rdi, OFFSET FLAT:.str
	mov	esi, 3
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:.str_0
	call	gobble_file
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_45
.label_34:
	movabs	rdi, OFFSET FLAT:.str
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	queue_directory
.label_45:
	jmp	.label_13
.label_31:
	jmp	.label_10
.label_10:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:.str_0
	mov	eax, dword ptr [rbp - 0x14]
	mov	edi, eax
	add	edi, 1
	mov	dword ptr [rbp - 0x14], edi
	movsxd	r9, eax
	mov	r10, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [r10 + r9*8]
	call	gobble_file
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	jl	.label_10
	jmp	.label_13
.label_13:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_15
	call	sort_files
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_24
	xor	eax, eax
	mov	edi, eax
	mov	esi, 1
	call	extract_dirs_from_files
.label_24:
	jmp	.label_15
.label_15:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_27
	call	print_current_files
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_33
	jmp	.label_35
.label_35:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_33
.label_33:
	jmp	.label_43
.label_27:
	cmp	dword ptr [rbp - 0x24], 1
	jg	.label_18
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_18
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_18
	mov	byte ptr [byte ptr [print_dir_name]],  0
.label_18:
	jmp	.label_43
.label_43:
	jmp	.label_44
.label_44:
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_53
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_46
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_48
	call	dev_ino_pop
	lea	rcx, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rsi, rcx
	call	hash_delete
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_28
	jmp	.label_55
.label_28:
	movabs	rdi, OFFSET FLAT:.str.5
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0x640
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_55:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	dev_ino_free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	jmp	.label_44
.label_48:
	jmp	.label_46
.label_46:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	call	print_dir
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	mov	byte ptr [byte ptr [print_dir_name]],  1
	jmp	.label_44
.label_53:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_47
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_47
	cmp	qword ptr [word ptr [color_indicator]],  2
	jne	.label_8
	mov	rax,  qword ptr [word ptr [label_37]]
	movzx	ecx, word ptr [rax]
	sub	ecx, 0x5b1b
	setne	dl
	movzx	esi, dl
	cmp	esi, 0
	mov	dword ptr [rbp - 0xa8], ecx
	jne	.label_8
	cmp	qword ptr [word ptr [label_20]],  1
	jne	.label_8
	mov	rax,  qword ptr [word ptr [label_21]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	je	.label_22
.label_8:
	call	restore_default_color
.label_22:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	mov	dword ptr [rbp - 0xac], eax
	call	signal_restore
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x44], eax
.label_56:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_17
	mov	edi, 0x13
	call	raise
	mov	dword ptr [rbp - 0xb0], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_56
.label_17:
	mov	eax,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_25
	mov	edi, dword ptr [rbp - 0x44]
	call	raise
	mov	dword ptr [rbp - 0xb4], eax
.label_25:
	jmp	.label_47
.label_47:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_49
	movabs	rdi, OFFSET FLAT:.str.8
	movabs	rsi, OFFSET FLAT:dired_obstack
	call	dired_dump_obstack
	movabs	rdi, OFFSET FLAT:.str.9
	movabs	rsi, OFFSET FLAT:subdired_obstack
	call	dired_dump_obstack
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	get_quoting_style
	movabs	rdi, OFFSET FLAT:.str.10
	mov	eax, eax
	mov	esi, eax
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + quoting_style_args]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xb8], eax
.label_49:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_11
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_30
	jmp	.label_32
.label_30:
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0x674
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_32:
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_free
.label_11:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_58
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_58:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d0

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [byte ptr [rip + qmark_funny_chars]],  0
	mov	edi,  dword ptr [dword ptr [rip + ls_mode]]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 0xa8], edi
	mov	dword ptr [rbp - 0xac], eax
	je	.label_105
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 2
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_122
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 3
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_128
	jmp	.label_131
.label_122:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	jmp	.label_87
.label_128:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  0
	call	set_quoting_style
	jmp	.label_87
.label_105:
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	je	.label_116
	xor	eax, eax
	mov	edi, eax
	mov	esi, 3
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_152
.label_116:
	mov	dword ptr [dword ptr [format]],  1
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
.label_152:
	jmp	.label_87
.label_131:
	call	abort
.label_87:
	mov	dword ptr [dword ptr [time_type]],  0
	mov	dword ptr [dword ptr [sort_type]],  0
	mov	byte ptr [byte ptr [sort_reverse]],  0
	mov	byte ptr [byte ptr [numeric_ids]],  0
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [byte ptr [print_inode]],  0
	mov	dword ptr [dword ptr [dereference]],  1
	mov	byte ptr [byte ptr [recursive]],  0
	mov	byte ptr [byte ptr [immediate_dirs]],  0
	mov	dword ptr [dword ptr [ignore_mode]],  0
	mov	qword ptr [word ptr [ignore_patterns]],  0
	mov	qword ptr [word ptr [hide_patterns]],  0
	mov	byte ptr [byte ptr [print_scontext]],  0
	call	getenv_quoting_style
	movabs	rdi, OFFSET FLAT:.str.63
	mov	qword ptr [word ptr [line_length]],  0x50
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_191
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_191
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_line_length
	test	al, 1
	jne	.label_191
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_191:
	mov	edi, 1
	mov	eax, 0x5413
	mov	esi, eax
	lea	rdx, [rbp - 0x30]
	mov	al, 0
	call	ioctl
	cmp	eax, -1
	je	.label_208
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0x2e]
	cmp	eax, ecx
	jge	.label_208
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	movzx	eax, word ptr [rbp - 0x2e]
	mov	edx, eax
	cmp	rcx, rdx
	jne	.label_208
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	mov	qword ptr [word ptr [line_length]],  rcx
.label_208:
	movabs	rdi, OFFSET FLAT:.str.65
	call	getenv
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [word ptr [tabsize]],  8
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_221
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xd0]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_232
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_232
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_235
.label_232:
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_235:
	jmp	.label_221
.label_221:
	jmp	.label_231
.label_231:
	movabs	rdx, OFFSET FLAT:.str.67
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	jne	.label_72
	jmp	.label_74
.label_72:
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xdc], eax
	mov	dword ptr [rbp - 0xe0], ecx
	je	.label_76
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_84
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x31
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_90
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0xec], eax
	je	.label_94
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_99
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_104
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_108
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_234
	jmp	.label_188
.label_188:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x100], eax
	je	.label_149
	jmp	.label_212
.label_212:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x104], eax
	je	.label_127
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x108], eax
	je	.label_133
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_226
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x110], eax
	je	.label_142
	jmp	.label_145
.label_145:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x51
	mov	dword ptr [rbp - 0x114], eax
	je	.label_146
	jmp	.label_150
.label_150:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x118], eax
	je	.label_151
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_158
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x120], eax
	je	.label_164
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x124], eax
	je	.label_68
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x128], eax
	je	.label_170
	jmp	.label_176
.label_176:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_178
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x130], eax
	je	.label_182
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x134], eax
	je	.label_186
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x138], eax
	je	.label_190
	jmp	.label_192
.label_192:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_193
	jmp	.label_196
.label_196:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x140], eax
	je	.label_198
	jmp	.label_200
.label_200:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x144], eax
	je	.label_201
	jmp	.label_203
.label_203:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x148], eax
	je	.label_205
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x14c], eax
	je	.label_209
	jmp	.label_213
.label_213:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x150], eax
	je	.label_215
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x154], eax
	je	.label_219
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x158], eax
	je	.label_223
	jmp	.label_224
.label_224:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_225
	jmp	.label_228
.label_228:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x160], eax
	je	.label_229
	jmp	.label_153
.label_153:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x164], eax
	je	.label_233
	jmp	.label_237
.label_237:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x168], eax
	je	.label_187
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_240
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x170], eax
	je	.label_246
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x174], eax
	je	.label_63
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x178], eax
	je	.label_70
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_130
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x180], eax
	je	.label_81
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x184], eax
	je	.label_88
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x188], eax
	je	.label_92
	jmp	.label_242
.label_242:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_97
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x190], eax
	je	.label_102
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x194], eax
	je	.label_140
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x198], eax
	je	.label_112
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_121
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_129
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_134
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x1a8], eax
	je	.label_139
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x89
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_144
	jmp	.label_147
.label_147:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_148
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_155
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0x1b8], eax
	je	.label_160
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8d
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_241
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8e
	mov	dword ptr [rbp - 0x1c0], eax
	je	.label_168
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8f
	mov	dword ptr [rbp - 0x1c4], eax
	je	.label_175
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x90
	mov	dword ptr [rbp - 0x1c8], eax
	je	.label_159
	jmp	.label_183
.label_182:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	jmp	.label_62
.label_186:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	call	set_quoting_style
	jmp	.label_62
.label_190:
	mov	dword ptr [dword ptr [time_type]],  1
	jmp	.label_62
.label_193:
	mov	byte ptr [byte ptr [immediate_dirs]],  1
	jmp	.label_62
.label_198:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_195
	mov	edi, 1
	call	isatty
	mov	edi, 1
	mov	ecx, 2
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [dword ptr [format]],  edi
.label_195:
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	byte ptr [byte ptr [print_with_color]],  0
	mov	byte ptr [byte ptr [print_hyperlink]],  0
	jmp	.label_62
.label_112:
	mov	dword ptr [dword ptr [indicator_style]],  2
	jmp	.label_62
.label_201:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_owner]],  0
	jmp	.label_62
.label_205:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	dword ptr [dword ptr [file_human_output_opts]],  0xb0
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_62
.label_209:
	mov	byte ptr [byte ptr [print_inode]],  1
	jmp	.label_62
.label_215:
	mov	byte ptr [rbp - 0x1a], 1
	jmp	.label_62
.label_219:
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_62
.label_223:
	mov	dword ptr [dword ptr [format]],  4
	jmp	.label_62
.label_225:
	mov	byte ptr [byte ptr [numeric_ids]],  1
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_62
.label_229:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_62
.label_233:
	mov	dword ptr [dword ptr [indicator_style]],  1
	jmp	.label_62
.label_187:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_62
.label_240:
	mov	byte ptr [byte ptr [sort_reverse]],  1
	jmp	.label_62
.label_246:
	mov	byte ptr [byte ptr [print_block_size]],  1
	jmp	.label_62
.label_63:
	mov	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_70:
	mov	dword ptr [dword ptr [time_type]],  2
	jmp	.label_62
.label_130:
	mov	dword ptr [dword ptr [sort_type]],  3
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_81:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_line_length
	test	al, 1
	jne	.label_78
	movabs	rdi, OFFSET FLAT:.str.69
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d0], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_78:
	jmp	.label_62
.label_88:
	mov	dword ptr [dword ptr [format]],  3
	jmp	.label_62
.label_94:
	mov	dword ptr [dword ptr [ignore_mode]],  1
	jmp	.label_62
.label_99:
	movabs	rdi, OFFSET FLAT:.str.70
	call	add_ignore_pattern
	movabs	rdi, OFFSET FLAT:.str.71
	call	add_ignore_pattern
	jmp	.label_62
.label_104:
	mov	dword ptr [dword ptr [format]],  2
	jmp	.label_62
.label_108:
	mov	byte ptr [byte ptr [dired]],  1
	jmp	.label_62
.label_234:
	mov	dword ptr [dword ptr [indicator_style]],  3
	jmp	.label_62
.label_149:
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_62
.label_127:
	mov	dword ptr [dword ptr [dereference]],  3
	jmp	.label_62
.label_140:
	mov	dword ptr [dword ptr [dereference]],  4
	jmp	.label_62
.label_133:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_ignore_pattern
	jmp	.label_62
.label_226:
	mov	dword ptr [dword ptr [dereference]],  5
	jmp	.label_62
.label_142:
	xor	eax, eax
	mov	edi, eax
	xor	esi, esi
	call	set_quoting_style
	jmp	.label_62
.label_146:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 5
	call	set_quoting_style
	jmp	.label_62
.label_151:
	mov	byte ptr [byte ptr [recursive]],  1
	jmp	.label_62
.label_158:
	mov	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_164:
	movabs	rdi, OFFSET FLAT:.str.72
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	call	gettext
	xor	esi, esi
	xor	ecx, ecx
	mov	edx, ecx
	mov	rcx, -1
	movabs	r8, OFFSET FLAT:.str_0
	mov	r9d, 2
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	dword ptr [rbp - 0x1dc], r9d
	mov	r9, rax
	mov	dword ptr [rsp], 2
	call	xnumtoumax
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_62
.label_68:
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_170:
	mov	dword ptr [dword ptr [sort_type]],  1
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_90:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_174
	mov	dword ptr [dword ptr [format]],  1
.label_174:
	jmp	.label_62
.label_92:
	mov	byte ptr [byte ptr [print_author]],  1
	jmp	.label_62
.label_139:
	mov	eax, 0x10
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [hide_patterns]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [hide_patterns]],  rax
	jmp	.label_62
.label_168:
	movabs	rdi, OFFSET FLAT:.str.73
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rax, OFFSET FLAT:sort_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sort_types]]
	mov	dword ptr [dword ptr [sort_type]],  r10d
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_62
.label_134:
	mov	byte ptr [byte ptr [directories_first]],  1
	jmp	.label_62
.label_175:
	movabs	rdi, OFFSET FLAT:.str.74
	movabs	rdx, OFFSET FLAT:time_args
	movabs	rax, OFFSET FLAT:time_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
	mov	dword ptr [dword ptr [time_type]],  r10d
	jmp	.label_62
.label_121:
	movabs	rdi, OFFSET FLAT:.str.75
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_types]]
	mov	dword ptr [dword ptr [format]],  r10d
	jmp	.label_62
.label_129:
	movabs	rdi, OFFSET FLAT:.str.76
	mov	dword ptr [dword ptr [format]],  0
	call	bad_cast
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_62
.label_102:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_238
	movabs	rdi, OFFSET FLAT:.str.77
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x54], r10d
	jmp	.label_67
.label_238:
	mov	dword ptr [rbp - 0x54], 1
.label_67:
	mov	al, 1
	cmp	dword ptr [rbp - 0x54], 1
	mov	byte ptr [rbp - 0x1dd], al
	je	.label_117
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 2
	mov	byte ptr [rbp - 0x1de], cl
	jne	.label_75
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x1de], cl
.label_75:
	mov	al, byte ptr [rbp - 0x1de]
	mov	byte ptr [rbp - 0x1dd], al
.label_117:
	mov	al, byte ptr [rbp - 0x1dd]
	and	al, 1
	mov	byte ptr [byte ptr [print_with_color]],  al
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_197
	mov	qword ptr [word ptr [tabsize]],  0
.label_197:
	jmp	.label_62
.label_144:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_95
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x58], r10d
	jmp	.label_109
.label_95:
	mov	dword ptr [rbp - 0x58], 1
.label_109:
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0x1df], al
	je	.label_115
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0x1e0], cl
	jne	.label_120
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x1e0], cl
.label_120:
	mov	al, byte ptr [rbp - 0x1e0]
	mov	byte ptr [rbp - 0x1df], al
.label_115:
	mov	al, byte ptr [rbp - 0x1df]
	and	al, 1
	mov	byte ptr [byte ptr [print_hyperlink]],  al
	jmp	.label_62
.label_148:
	movabs	rdi, OFFSET FLAT:.str.79
	movabs	rdx, OFFSET FLAT:indicator_style_args
	movabs	rax, OFFSET FLAT:indicator_style_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + indicator_style_types]]
	mov	dword ptr [dword ptr [indicator_style]],  r10d
	jmp	.label_62
.label_155:
	movabs	rdi, OFFSET FLAT:.str.80
	movabs	rdx, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	xor	r10d, r10d
	mov	edi, r10d
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_62
.label_159:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_62
.label_160:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
	jmp	.label_62
.label_97:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	human_options
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_180
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x44]
	mov	r8,  qword ptr [word ptr [optarg]]
	call	xstrtol_fatal
.label_180:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
	jmp	.label_62
.label_241:
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	dword ptr [dword ptr [file_human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_62
.label_178:
	mov	byte ptr [byte ptr [print_scontext]],  1
	jmp	.label_62
.label_84:
	xor	edi, edi
	call	usage
.label_76:
	mov	rdi,  qword ptr [word ptr [stdout]]
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	qword ptr [rbp - 0x1e8], rdi
	jne	.label_202
	movabs	rax, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x1f0], rax
	jmp	.label_206
.label_202:
	movabs	rax, OFFSET FLAT:.str.44
	movabs	rcx, OFFSET FLAT:.str.43
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x1f0], rax
.label_206:
	mov	rax, qword ptr [rbp - 0x1f0]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.82
	movabs	r9, OFFSET FLAT:.str.83
	xor	ecx, ecx
	mov	esi, ecx
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	rsi, rax
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_183:
	mov	edi, 2
	call	usage
.label_62:
	jmp	.label_231
.label_74:
	cmp	qword ptr [word ptr [output_block_size]],  0
	jne	.label_77
	movabs	rdi, OFFSET FLAT:.str.84
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	human_options
	cmp	qword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 0x1fc], eax
	jne	.label_243
	movabs	rdi, OFFSET FLAT:.str.4
	call	getenv
	cmp	rax, 0
	je	.label_59
.label_243:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
.label_59:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_71
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
.label_71:
	jmp	.label_77
.label_77:
	xor	eax, eax
	mov	edi, eax
	mov	eax, 3
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	edx, edx
	div	rcx
	mov	qword ptr [word ptr [max_idx]],  rax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	esi, esi
	mov	edx, esi
	div	rcx
	cmp	rdx, 0
	setne	r8b
	and	r8b, 1
	movzx	esi, r8b
	movsxd	rcx, esi
	add	rcx,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [word ptr [max_idx]],  rcx
	call	get_quoting_style
	xor	esi, esi
	mov	r8b, sil
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [dword ptr [format]],  4
	mov	byte ptr [rbp - 0x1fd], r8b
	je	.label_96
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  1
	mov	byte ptr [rbp - 0x1fd], cl
	je	.label_96
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_106
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x1fd], cl
	jne	.label_96
.label_106:
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 1
	mov	byte ptr [rbp - 0x1fe], al
	je	.label_113
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 3
	mov	byte ptr [rbp - 0x1fe], al
	je	.label_113
	cmp	dword ptr [rbp - 0x6c], 6
	sete	al
	mov	byte ptr [rbp - 0x1fe], al
.label_113:
	mov	al, byte ptr [rbp - 0x1fe]
	mov	byte ptr [rbp - 0x1fd], al
.label_96:
	mov	al, byte ptr [rbp - 0x1fd]
	xor	ecx, ecx
	mov	edi, ecx
	and	al, 1
	mov	byte ptr [byte ptr [align_variable_outer_quotes]],  al
	call	clone_quoting_options
	mov	qword ptr [word ptr [filename_quoting_options]],  rax
	cmp	dword ptr [rbp - 0x6c], 7
	jne	.label_136
	mov	esi, 0x20
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x204], eax
.label_136:
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	ja	.label_143
	movabs	rax, OFFSET FLAT:.str.86
	mov	ecx,  dword ptr [dword ptr [indicator_style]]
	sub	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	add	rax, rdx
	mov	qword ptr [rbp - 0x78], rax
.label_217:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	byte ptr [rax], 0
	je	.label_179
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 0x78]
	movsx	esi, byte ptr [rax]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x208], eax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_217
.label_179:
	jmp	.label_143
.label_143:
	xor	eax, eax
	mov	edi, eax
	call	clone_quoting_options
	mov	esi, 0x3a
	mov	edx, 1
	mov	qword ptr [word ptr [dirname_quoting_options]],  rax
	mov	rdi,  qword ptr [word ptr [dirname_quoting_options]]
	call	set_char_quoting
	test	byte ptr [byte ptr [dired]],  1
	mov	dword ptr [rbp - 0x20c], eax
	je	.label_171
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_177
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_171
.label_177:
	mov	byte ptr [byte ptr [dired]],  0
.label_171:
	cmp	dword ptr [dword ptr [time_type]],  1
	je	.label_167
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_184
.label_167:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_184
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_184
	mov	dword ptr [dword ptr [sort_type]],  4
.label_184:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_244
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_194
	movabs	rdi, OFFSET FLAT:.str.87
	call	getenv
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_199
	movabs	rdi, OFFSET FLAT:.str.8_0
	call	bad_cast
	mov	qword ptr [rbp - 0x80], rax
.label_199:
	jmp	.label_194
.label_194:
	jmp	.label_204
.label_204:
	movabs	rsi, OFFSET FLAT:decode_switches.posix_prefix
	mov	eax, 6
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x80]
	call	strncmp
	cmp	eax, 0
	jne	.label_210
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_214
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_216
.label_214:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 6
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_204
.label_210:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_220
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	strchr
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_227
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_230
.label_227:
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	je	.label_181
	movabs	rdi, OFFSET FLAT:.str.89
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x218], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_181:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x90], rcx
	mov	byte ptr [rax], 0
.label_230:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [long_time_format]],  rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [word ptr [label_65]],  rax
	jmp	.label_66
.label_220:
	movabs	rsi, OFFSET FLAT:time_style_args
	movabs	rax, OFFSET FLAT:time_style_types
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, rax
	call	argmatch
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jge	.label_82
	movabs	rdi, OFFSET FLAT:.str.90
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	call	argmatch_invalid
	movabs	rdi, OFFSET FLAT:.str.91
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdx, OFFSET FLAT:time_style_args
	mov	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0x21c], eax
.label_114:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rax], 0
	je	.label_100
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rdx, qword ptr [rax]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x220], eax
	jmp	.label_114
.label_100:
	movabs	rdi, OFFSET FLAT:.str.93
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	edi, 2
	mov	dword ptr [rbp - 0x224], eax
	call	usage
.label_82:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	sub	rcx, 3
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x238], rcx
	ja	.label_135
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_73]]
	jmp	rcx
.label_2831:
	movabs	rax, OFFSET FLAT:.str.94
	mov	qword ptr [word ptr [label_65]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_135
.label_2832:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [word ptr [label_65]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_135
.label_2833:
	movabs	rax, OFFSET FLAT:.str.97
	movabs	rcx, OFFSET FLAT:.str.96
	mov	qword ptr [word ptr [long_time_format]],  rcx
	mov	qword ptr [word ptr [label_65]],  rax
	jmp	.label_135
.label_2834:
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_161
	jmp	.label_163
.label_161:
	mov	dword ptr [rbp - 0xa4], 0
.label_172:
	cmp	dword ptr [rbp - 0xa4], 2
	jge	.label_166
	xor	eax, eax
	mov	edi, eax
	mov	edx, 2
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + long_time_format]]
	call	dcgettext
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	qword ptr [word ptr [+ (rcx * 8) + long_time_format]],  rax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_172
.label_166:
	jmp	.label_163
.label_163:
	jmp	.label_135
.label_135:
	jmp	.label_66
.label_66:
	call	abformat_init
.label_244:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
.label_216:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl parse_ls_color
	.type parse_ls_color, @function
parse_ls_color:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	movabs	rdi, OFFSET FLAT:.str.172
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_248
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_251
.label_248:
	movabs	rdi, OFFSET FLAT:.str.173
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_254
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_256
.label_254:
	call	known_term_type
	test	al, 1
	jne	.label_256
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_256:
	jmp	.label_262
.label_251:
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x20], 0
	mov	eax, OFFSET FLAT:.str.174
	mov	esi, eax
	call	strcpy
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	call	xstrdup
	mov	qword ptr [word ptr [color_buf]],  rax
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x2c], 1
.label_263:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x54], eax
	ja	.label_260
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_255]]
	jmp	rcx
.label_2837:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_257
	jmp	.label_259
.label_259:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_261
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_267
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_249
.label_261:
	mov	eax, 0x28
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [color_ext_list]],  rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rcx, qword ptr [rbp - 0x20]
	call	get_funky_string
	mov	edx, 6
	mov	r8d, 4
	test	al, 1
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_249
.label_257:
	mov	dword ptr [rbp - 0x2c], 5
	jmp	.label_250
.label_267:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x17], dl
	mov	dword ptr [rbp - 0x2c], 2
.label_249:
	jmp	.label_253
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl is_colored
	.type is_colored, @function
is_colored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, 1
	movabs	rcx, OFFSET FLAT:color_indicator
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	mov	rsi, rcx
	add	rsi, rdx
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	add	rcx, rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x19], al
	je	.label_279
	cmp	qword ptr [rbp - 0x10], 1
	jne	.label_281
	movabs	rsi, OFFSET FLAT:.str.45
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_279
.label_281:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 2
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_280
	movabs	rsi, OFFSET FLAT:.str.46
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_280:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_279:
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl dev_ino_hash
	.type dev_ino_hash, @function
dev_ino_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl dev_ino_compare
	.type dev_ino_compare, @function
dev_ino_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_282:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405020

	.globl dev_ino_free
	.type dev_ino_free, @function
dev_ino_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405040

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 0
.label_284:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_285
	mov	edi, dword ptr [rbp - 4]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 5], cl
	jne	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x7e
	mov	byte ptr [rbp - 5], al
	je	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2d
	mov	byte ptr [rbp - 5], al
	je	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2e
	mov	byte ptr [rbp - 5], al
	je	.label_283
	cmp	dword ptr [rbp - 4], 0x5f
	sete	al
	mov	byte ptr [rbp - 5], al
.label_283:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsx	esi,  byte ptr [byte ptr [+ (rdx * 1) + RFC3986]]
	or	esi, ecx
	mov	al, sil
	mov	byte ptr [byte ptr [+ (rdx * 1) + RFC3986]],  al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_284
.label_285:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl clear_files
	.type clear_files, @function
clear_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], 0
.label_287:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_286
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_ent
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_287
.label_286:
	mov	qword ptr [word ptr [cwd_n_used]],  0
	mov	byte ptr [byte ptr [cwd_some_quoted]],  0
	mov	byte ptr [byte ptr [any_has_acl]],  0
	mov	dword ptr [dword ptr [inode_number_width]],  0
	mov	dword ptr [dword ptr [block_size_width]],  0
	mov	dword ptr [dword ptr [nlink_width]],  0
	mov	dword ptr [dword ptr [owner_width]],  0
	mov	dword ptr [dword ptr [group_width]],  0
	mov	dword ptr [dword ptr [author_width]],  0
	mov	dword ptr [dword ptr [scontext_width]],  0
	mov	dword ptr [dword ptr [major_device_number_width]],  0
	mov	dword ptr [dword ptr [minor_device_number_width]],  0
	mov	dword ptr [dword ptr [file_size_width]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051c0

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x6e0
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], 0
	test	byte ptr [rbp - 0x21], 1
	je	.label_313
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_335
.label_313:
	jmp	.label_370
.label_335:
	movabs	rdi, OFFSET FLAT:.str.216
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xc2f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gobble_file
	call	__assert_fail
.label_370:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	cmp	rax,  qword ptr [word ptr [cwd_n_alloc]]
	jne	.label_299
	mov	eax, 0x190
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_alloc]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	rax,  qword ptr [word ptr [cwd_n_alloc]]
	shl	rax, 1
	mov	qword ptr [word ptr [cwd_n_alloc]],  rax
.label_299:
	xor	esi, esi
	mov	eax, 0xc8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	imul	rcx, rcx, 0xc8
	add	rcx,  qword ptr [word ptr [cwd_file]]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rdx + 0x20], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xa8], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xc4], 0xffffffff
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	jne	.label_290
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_290
	mov	rdi, qword ptr [rbp - 0x10]
	call	needs_quoting
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rdi + 0xc4], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdi + 0xc4], 0
	je	.label_331
	mov	byte ptr [byte ptr [cwd_some_quoted]],  1
.label_331:
	jmp	.label_290
.label_290:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_288
	test	byte ptr [byte ptr [print_hyperlink]],  1
	jne	.label_288
	test	byte ptr [byte ptr [format_needs_stat]],  1
	jne	.label_288
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_362
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_362
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_288
.label_362:
	test	byte ptr [byte ptr [print_inode]],  1
	jne	.label_353
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_356
.label_353:
	cmp	dword ptr [rbp - 0x14], 6
	je	.label_301
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_356
.label_301:
	cmp	dword ptr [dword ptr [dereference]],  5
	je	.label_288
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_288
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	jne	.label_288
.label_356:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_367
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_288
.label_367:
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_291
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_288
	test	byte ptr [rbp - 0x21], 1
	jne	.label_288
	cmp	dword ptr [rbp - 0x14], 5
	jne	.label_291
	cmp	dword ptr [dword ptr [indicator_style]],  3
	je	.label_288
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_291
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_288
	jmp	.label_291
.label_288:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_319
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_322
.label_319:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_315
.label_322:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x6b0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x6b0]
	lea	rax, [rdi + rax + 0x11]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x48], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	attach
.label_315:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_336
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_filename_mode
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_341
	movabs	rdi, OFFSET FLAT:.str.207
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6b1], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6b1]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_341:
	jmp	.label_336
.label_336:
	mov	eax,  dword ptr [dword ptr [rip + dereference]]
	mov	ecx, eax
	add	ecx, -3
	sub	ecx, 2
	mov	dword ptr [rbp - 0x6b8], eax
	mov	dword ptr [rbp - 0x6bc], ecx
	jb	.label_348
	jmp	.label_354
.label_354:
	mov	eax, dword ptr [rbp - 0x6b8]
	sub	eax, 5
	mov	dword ptr [rbp - 0x6c0], eax
	jne	.label_314
	jmp	.label_358
.label_358:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_292
.label_348:
	test	byte ptr [rbp - 0x21], 1
	je	.label_312
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	cmp	dword ptr [dword ptr [dereference]],  3
	jne	.label_369
	jmp	.label_292
.label_369:
	cmp	dword ptr [rbp - 0x50], 0
	jge	.label_294
	call	__errno_location
	cmp	dword ptr [rax], 2
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x6c4], edx
	jmp	.label_297
.label_294:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 0x6c4], ecx
.label_297:
	mov	eax, dword ptr [rbp - 0x6c4]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	test	byte ptr [rbp - 0x51], 1
	jne	.label_305
	jmp	.label_292
.label_305:
	jmp	.label_312
.label_312:
	jmp	.label_314
.label_314:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	__lstat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 0
.label_292:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_321
	movabs	rdi, OFFSET FLAT:.str.217
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	test	byte ptr [rbp - 0x21], 1
	je	.label_326
	mov	qword ptr [rbp - 8], 0
	jmp	.label_318
.label_326:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_318
.label_321:
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb8], 1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_340
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_344
.label_340:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_344
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_359
	jmp	.label_344
.label_359:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	has_capability_cache
	mov	rsi, qword ptr [rbp - 0x40]
	and	al, 1
	mov	byte ptr [rsi + 0xc0], al
.label_344:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_351
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_355
.label_351:
	mov	byte ptr [rbp - 0x52], 0
	mov	byte ptr [rbp - 0x53], 0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	edx, al
	call	getfilecon_cache
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setl	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_364
	call	is_smack_enabled
	test	al, 1
	jne	.label_352
	jmp	.label_368
.label_352:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:.str.218
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
	jmp	.label_293
.label_368:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:.str.219
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
.label_293:
	jmp	.label_302
.label_364:
	movabs	rax, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xb0], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_308
	call	__errno_location
	cmp	dword ptr [rax], 0x3d
	jne	.label_311
.label_308:
	mov	dword ptr [rbp - 0x50], 0
.label_311:
	jmp	.label_302
.label_302:
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_317
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_317
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	file_has_acl_cache
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setl	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x50], eax
	cmp	ecx, dword ptr [rbp - 0x5c]
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x53], dl
.label_317:
	test	byte ptr [rbp - 0x52], 1
	jne	.label_325
	test	byte ptr [rbp - 0x53], 1
	jne	.label_325
	xor	eax, eax
	mov	dword ptr [rbp - 0x6cc], eax
	jmp	.label_328
.label_325:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x52], 1
	mov	byte ptr [rbp - 0x6cd], cl
	je	.label_332
	mov	al, byte ptr [rbp - 0x53]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x6cd], al
.label_332:
	mov	al, byte ptr [rbp - 0x6cd]
	mov	ecx, 2
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x6cc], ecx
.label_328:
	mov	eax, dword ptr [rbp - 0x6cc]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xbc], eax
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rcx + 0xbc], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	mov	dl,  byte ptr [byte ptr [any_has_acl]]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [any_has_acl]],  dl
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_342
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x6d4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x6d4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_342:
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_361
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_365
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_361
.label_365:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	call	get_link_name
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 8]
	call	make_link_name
	mov	qword ptr [rbp - 0xf8], rax
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_296
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xc4], 0
	jne	.label_296
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 8]
	call	needs_quoting
	test	al, 1
	jne	.label_303
	jmp	.label_296
.label_303:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xc4], 0xffffffff
.label_296:
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_307
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	jbe	.label_310
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_307
.label_310:
	lea	rsi, [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0xf8]
	call	stat
	cmp	eax, 0
	jne	.label_307
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb9], 1
	mov	ecx, dword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xac], ecx
.label_307:
	mov	rdi, qword ptr [rbp - 0xf8]
	call	free
.label_361:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_337
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 6
	jmp	.label_329
.label_337:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_334
	test	byte ptr [rbp - 0x21], 1
	je	.label_339
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_339
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 9
	jmp	.label_343
.label_339:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 3
.label_343:
	jmp	.label_345
.label_334:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 5
.label_345:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_346
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_349
.label_346:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x390]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x394], eax
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	cmp	eax, dword ptr [rbp - 0x394]
	jge	.label_363
	mov	eax, dword ptr [rbp - 0x394]
	mov	dword ptr [dword ptr [block_size_width]],  eax
.label_363:
	jmp	.label_349
.label_349:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_324
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_289
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x398], eax
	mov	eax,  dword ptr [dword ptr [owner_width]]
	cmp	eax, dword ptr [rbp - 0x398]
	jge	.label_320
	mov	eax, dword ptr [rbp - 0x398]
	mov	dword ptr [dword ptr [owner_width]],  eax
.label_320:
	jmp	.label_289
.label_289:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_306
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x38]
	call	format_group_width
	mov	dword ptr [rbp - 0x39c], eax
	mov	eax,  dword ptr [dword ptr [group_width]]
	cmp	eax, dword ptr [rbp - 0x39c]
	jge	.label_298
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [dword ptr [group_width]],  eax
.label_298:
	jmp	.label_306
.label_306:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_316
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x3a0], eax
	mov	eax,  dword ptr [dword ptr [author_width]]
	cmp	eax, dword ptr [rbp - 0x3a0]
	jge	.label_366
	mov	eax, dword ptr [rbp - 0x3a0]
	mov	dword ptr [dword ptr [author_width]],  eax
.label_366:
	jmp	.label_316
.label_316:
	jmp	.label_324
.label_324:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_333
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3a4], ecx
	mov	ecx,  dword ptr [dword ptr [scontext_width]]
	cmp	ecx, dword ptr [rbp - 0x3a4]
	jge	.label_357
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	dword ptr [dword ptr [scontext_width]],  eax
.label_357:
	jmp	.label_333
.label_333:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_327
	lea	rsi, [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c4], ecx
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	cmp	ecx, dword ptr [rbp - 0x3c4]
	jge	.label_360
	mov	eax, dword ptr [rbp - 0x3c4]
	mov	dword ptr [dword ptr [nlink_width]],  eax
.label_360:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_347
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_350
.label_347:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_major
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_323
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [major_device_number_width]],  eax
.label_323:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [minor_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_295
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [minor_device_number_width]],  eax
.label_295:
	mov	eax,  dword ptr [dword ptr [major_device_number_width]]
	add	eax, 2
	add	eax,  dword ptr [dword ptr [minor_device_number_width]]
	mov	dword ptr [rbp - 0x3e4], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x3e4]
	jge	.label_300
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_300:
	jmp	.label_309
.label_350:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x670]
	mov	qword ptr [rbp - 0x678], rax
	mov	rdi, qword ptr [rbp - 0x678]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x67c], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x67c]
	jge	.label_304
	mov	eax, dword ptr [rbp - 0x67c]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_304:
	jmp	.label_309
.label_309:
	jmp	.label_327
.label_327:
	jmp	.label_291
.label_291:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_330
	lea	rsi, [rbp - 0x6a0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x6a4], ecx
	mov	ecx,  dword ptr [dword ptr [inode_number_width]]
	cmp	ecx, dword ptr [rbp - 0x6a4]
	jge	.label_338
	mov	eax, dword ptr [rbp - 0x6a4]
	mov	dword ptr [dword ptr [inode_number_width]],  eax
.label_338:
	jmp	.label_330
.label_330:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_318:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f80

	.globl queue_directory
	.type queue_directory, @function
queue_directory:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	edx, 0x20
	mov	ecx, edx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_372
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_373
.label_372:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_371
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_374
.label_371:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x11]
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x10], dl
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406050

	.globl sort_files
	.type sort_files, @function
sort_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [sorted_file_alloc]]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rdx,  qword ptr [word ptr [cwd_n_used]]
	shr	rdx, 1
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_379
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rdi, rax
	call	free
	mov	ecx, 0x18
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [cwd_n_used]]
	call	xnmalloc
	mov	qword ptr [word ptr [sorted_file]],  rax
	imul	rax,  qword ptr [word ptr [cwd_n_used]],  3
	mov	qword ptr [word ptr [sorted_file_alloc]],  rax
.label_379:
	call	initialize_ordering_vector
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_375
	jmp	.label_377
.label_375:
	movabs	rdi, OFFSET FLAT:failed_strcoll
	call	_setjmp
	cmp	eax, 0
	jne	.label_382
	mov	byte ptr [rbp - 1], 0
	jmp	.label_378
.label_382:
	mov	byte ptr [rbp - 1], 1
	cmp	dword ptr [dword ptr [sort_type]],  3
	je	.label_381
	jmp	.label_376
.label_381:
	movabs	rdi, OFFSET FLAT:.str.222
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xeea
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.sort_files
	call	__assert_fail
.label_376:
	call	initialize_ordering_vector
.label_378:
	mov	rdi,  qword ptr [word ptr [sorted_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_used]]
	mov	al,  byte ptr [byte ptr [directories_first]]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	al,  byte ptr [byte ptr [sort_reverse]]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	mov	r9d, ecx
	mov	ecx,  dword ptr [dword ptr [sort_type]]
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	dword ptr [rbp - 0x34], ecx
	jne	.label_383
	mov	eax,  dword ptr [dword ptr [time_type]]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_380
.label_383:
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:sort_functions
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, eax
	mov	eax, edx
	mov	esi, eax
	shl	rsi, 6
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 5
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + rsi*8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mpsort
.label_377:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406210

	.globl extract_dirs_from_files
	.type extract_dirs_from_files, @function
extract_dirs_from_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_388
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_388
	xor	eax, eax
	mov	edi, eax
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 8]
	call	queue_directory
.label_388:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x18], rax
.label_390:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_393
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	is_directory
	test	al, 1
	jne	.label_391
	jmp	.label_392
.label_391:
	test	byte ptr [rbp - 0x21], 1
	je	.label_394
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	basename_is_dot_or_dotdot
	test	al, 1
	jne	.label_392
.label_394:
	cmp	qword ptr [rbp - 8], 0
	je	.label_386
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_389
.label_386:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edx, cl
	call	queue_directory
	jmp	.label_384
.label_389:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	file_name_concat
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	r8b, byte ptr [rbp - 9]
	and	r8b, 1
	movzx	edx, r8b
	call	queue_directory
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_384:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xa8], 9
	jne	.label_385
	mov	rdi, qword ptr [rbp - 0x30]
	call	free_ent
.label_385:
	jmp	.label_392
.label_392:
	jmp	.label_390
.label_393:
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
.label_387:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xa8], 9
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_387
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl print_current_files
	.type print_current_files, @function
print_current_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax,  dword ptr [dword ptr [rip + format]]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	ja	.label_396
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_400]]
	jmp	rcx
.label_2883:
	mov	qword ptr [rbp - 8], 0
.label_403:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_406
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rdi, rcx
	call	print_file_name_and_frills
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x20], rax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_403
.label_406:
	jmp	.label_396
.label_2884:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_398
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_405
.label_398:
	call	print_many_per_line
.label_405:
	jmp	.label_396
.label_2885:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_404
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_399
.label_404:
	call	print_horizontal
.label_399:
	jmp	.label_396
.label_2886:
	mov	edi, 0x2c
	call	print_with_separator
	jmp	.label_396
.label_2882:
	mov	qword ptr [rbp - 8], 0
.label_397:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_402
	call	set_normal_color
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rdi, rax
	call	print_long_format
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_397
.label_402:
	jmp	.label_396
.label_396:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	dword ptr [rbp - 0x24], 0x10
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_407
	jmp	.label_408
.label_407:
	movabs	rdi, OFFSET FLAT:.str.47
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0x403
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dev_ino_pop
	call	__assert_fail
.label_408:
	mov	eax, dword ptr [rbp - 0x24]
	neg	eax
	mov	rcx,  qword ptr [word ptr [rip + label_409]]
	movsxd	rdx, eax
	mov	rsi, rcx
	add	rsi, rdx
	mov	qword ptr [word ptr [rip + label_409]],  rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rsi
	movups	xmm0, xmmword ptr [rcx + rdx]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl free_pending_ent
	.type free_pending_ent, @function
free_pending_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl print_dir
	.type print_dir, @function
print_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x3f0
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x30], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_437
	movabs	rdi, OFFSET FLAT:.str.203
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x371], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x371]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	jmp	.label_410
.label_437:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_446
	mov	rdi, qword ptr [rbp - 0x20]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc4], eax
	cmp	ecx, dword ptr [rbp - 0xc4]
	jg	.label_438
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc4]
	call	__fstat
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_414
.label_438:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	mov	dword ptr [rbp - 0x378], eax
.label_414:
	mov	eax, dword ptr [rbp - 0x378]
	cmp	eax, 0
	jge	.label_423
	movabs	rdi, OFFSET FLAT:.str.204
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x379], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x379]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	dword ptr [rbp - 0x380], eax
	jmp	.label_410
.label_423:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	visit_dir
	test	al, 1
	jne	.label_440
	jmp	.label_447
.label_440:
	movabs	rdi, OFFSET FLAT:.str.205
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x388], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x388]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	edi, 1
	mov	dword ptr [rbp - 0x38c], eax
	call	set_exit_status
	jmp	.label_410
.label_447:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	dev_ino_push
.label_446:
	call	clear_files
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_415
	test	byte ptr [byte ptr [print_dir_name]],  1
	je	.label_418
.label_415:
	test	byte ptr [byte ptr [print_dir.first]],  1
	jne	.label_428
	jmp	.label_439
.label_439:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x390], eax
	jmp	.label_428
.label_428:
	mov	byte ptr [byte ptr [print_dir.first]],  0
	test	byte ptr [byte ptr [dired]],  1
	je	.label_434
	jmp	.label_436
.label_436:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x394], eax
	jmp	.label_434
.label_434:
	jmp	.label_444
.label_444:
	mov	qword ptr [rbp - 0xd0], 0
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_422
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_449
	movabs	rdi, OFFSET FLAT:.str.207
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x395], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x395]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_449:
	jmp	.label_422
.label_422:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_424
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x3a0], rax
	jmp	.label_426
.label_424:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x3a0], rax
.label_426:
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	edx, 0xffffffff
	xor	ecx, ecx
	mov	r8d, 1
	movabs	r9, OFFSET FLAT:subdired_obstack
	mov	rsi,  qword ptr [word ptr [dirname_quoting_options]]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3a8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rsp], rax
	call	quote_name
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3b0], rax
	call	free
	movabs	rdi, OFFSET FLAT:.str.208
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_418
.label_418:
	jmp	.label_442
.label_442:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	readdir
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_412
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x13
	mov	rdi, rax
	call	file_ignored
	test	al, 1
	jne	.label_417
	mov	dword ptr [rbp - 0xd4], 0
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x12]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 0xd
	mov	qword ptr [rbp - 0x3c0], rax
	mov	dword ptr [rbp - 0x3c4], ecx
	ja	.label_420
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_430]]
	jmp	rcx
.label_2850:
	mov	dword ptr [rbp - 0xd4], 4
	jmp	.label_420
.label_2848:
	mov	dword ptr [rbp - 0xd4], 2
	jmp	.label_420
.label_2849:
	mov	dword ptr [rbp - 0xd4], 3
	jmp	.label_420
.label_2847:
	mov	dword ptr [rbp - 0xd4], 1
	jmp	.label_420
.label_2852:
	mov	dword ptr [rbp - 0xd4], 6
	jmp	.label_420
.label_2851:
	mov	dword ptr [rbp - 0xd4], 5
	jmp	.label_420
.label_2853:
	mov	dword ptr [rbp - 0xd4], 7
	jmp	.label_420
.label_2854:
	mov	dword ptr [rbp - 0xd4], 8
.label_420:
	xor	eax, eax
	mov	edx, eax
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, 0x13
	mov	eax, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 8]
	mov	rdi, rsi
	mov	esi, eax
	call	gobble_file
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [dword ptr [format]],  1
	jne	.label_411
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_411
	test	byte ptr [byte ptr [print_block_size]],  1
	jne	.label_411
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_411
	call	sort_files
	call	print_current_files
	call	clear_files
.label_411:
	jmp	.label_417
.label_417:
	jmp	.label_429
.label_412:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_427
	movabs	rdi, OFFSET FLAT:.str.209
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	je	.label_441
	jmp	.label_419
.label_441:
	jmp	.label_443
.label_427:
	jmp	.label_419
.label_443:
	jmp	.label_429
.label_429:
	call	process_signals
	jmp	.label_442
.label_419:
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_445
	movabs	rdi, OFFSET FLAT:.str.210
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c6], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c6]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_445:
	call	sort_files
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_413
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 8]
	call	extract_dirs_from_files
.label_413:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_416
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_421
.label_416:
	jmp	.label_425
.label_425:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_432
	jmp	.label_435
.label_435:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_432
.label_432:
	jmp	.label_431
.label_431:
	movabs	rdi, OFFSET FLAT:.str.211
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d0], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_448
.label_448:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3d4], eax
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x370]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d8], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_433
.label_433:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3dc], eax
	jmp	.label_421
.label_421:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_410
	call	print_current_files
.label_410:
	add	rsp, 0x3f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dc0

	.globl restore_default_color
	.type restore_default_color, @function
restore_default_color:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl signal_restore
	.type signal_restore, @function
signal_restore:
	push	rbp
	mov	rbp, rsp
	xor	edi, edi
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shr	rsi, 3
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_450
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_451:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_454
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_454:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x50], 0
	mov	dword ptr [rbp - 0x54], eax
.label_453:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_452
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_453
.label_452:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_450:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_455
	jmp	.label_456
.label_456:
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_458
.label_455:
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.32
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.34
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.36
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.38
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.40
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.41
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	dword ptr [rbp - 0x88], eax
	jne	.label_457
	movabs	rax, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_459
.label_457:
	movabs	rax, OFFSET FLAT:.str.44
	movabs	rcx, OFFSET FLAT:.str.43
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x90], rax
.label_459:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	emit_ancillary_info
.label_458:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x407430

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.231
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407460

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.232
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407490

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_465:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_464
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_464:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_463
	jmp	.label_462
.label_463:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_465
.label_462:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_460
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_460:
	movabs	rdi, OFFSET FLAT:.str.241
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_461
	movabs	rsi, OFFSET FLAT:.str.243
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_461
	movabs	rdi, OFFSET FLAT:.str.244
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_461:
	movabs	rdi, OFFSET FLAT:.str.245
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.246
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.247
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407630

	.globl put_indicator
	.type put_indicator, @function
put_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [used_color]],  1
	jne	.label_466
	mov	edi, 1
	mov	byte ptr [byte ptr [used_color]],  1
	call	tcgetpgrp
	xor	edi, edi
	cmp	edi, eax
	jg	.label_467
	call	signal_init
.label_467:
	call	prep_non_filename_text
.label_466:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x10], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl signal_init
	.type signal_init, @function
signal_init:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076b0

	.globl prep_non_filename_text
	.type prep_non_filename_text, @function
prep_non_filename_text:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [label_468]],  0
	je	.label_469
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x20
	mov	rdi, rax
	call	put_indicator
	jmp	.label_470
.label_469:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x30
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_470:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407720

	.globl signal_setup
	.type signal_setup, @function
signal_setup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_475
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_479:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_474
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	edi, 1
	mov	ecx, edi
	cmp	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_483
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0xac], eax
.label_483:
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_479
.label_474:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0xa0]
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [rbp - 0x18], 0x10000000
	mov	dword ptr [rbp - 8], 0
.label_484:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_471
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_477
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:sighandler
	movabs	rdi, OFFSET FLAT:stophandler
	movsxd	r8, dword ptr [rbp - 8]
	cmp	dword ptr [dword ptr [+ (r8 * 4) + signal_setup.sig]],  0x14
	cmove	rcx, rdi
	mov	qword ptr [rbp - 0xa0], rcx
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0xb0], eax
.label_477:
	jmp	.label_481
.label_481:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_484
.label_471:
	jmp	.label_472
.label_475:
	mov	dword ptr [rbp - 8], 0
.label_478:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_473
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_482
	xor	eax, eax
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	signal
	mov	qword ptr [rbp - 0xb8], rax
.label_482:
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_478
.label_473:
	jmp	.label_472
.label_472:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407910

	.globl stophandler
	.type stophandler, @function
stophandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_485
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
.label_485:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_486
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  eax
.label_486:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:.str.98
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_487
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_489
	xor	eax, eax
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_488
.label_489:
	movabs	rdi, OFFSET FLAT:.str.99
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_488:
	jmp	.label_487
.label_487:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, OFFSET FLAT:.str_0
	mov	r8d, eax
	xor	eax, eax
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	edx, eax
	call	xstrtoumax
	mov	edx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], edx
	je	.label_494
	jmp	.label_490
.label_490:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_493
	jmp	.label_495
.label_494:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_492
.label_496:
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_length]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_491
.label_493:
	mov	qword ptr [word ptr [line_length]],  -1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_491
.label_495:
	mov	byte ptr [rbp - 1], 0
.label_491:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ae0

	.globl add_ignore_pattern
	.type add_ignore_pattern, @function
add_ignore_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [ignore_patterns]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [ignore_patterns]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b30

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b40

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x660
	mov	dword ptr [rbp - 0x14], 0
.label_504:
	cmp	dword ptr [rbp - 0x14], 2
	jge	.label_499
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	call	first_percent_b
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp + rdi*8 - 0x10], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_504
.label_499:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_498
	cmp	qword ptr [rbp - 8], 0
	jne	.label_498
	jmp	.label_500
.label_498:
	lea	rdi, [rbp - 0x620]
	call	abmon_init
	test	al, 1
	jne	.label_503
	jmp	.label_500
.label_503:
	mov	dword ptr [rbp - 0x624], 0
.label_508:
	cmp	dword ptr [rbp - 0x624], 2
	jge	.label_497
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x630], rax
	mov	dword ptr [rbp - 0x634], 0
.label_501:
	cmp	dword ptr [rbp - 0x634], 0xc
	jge	.label_505
	movabs	rax, OFFSET FLAT:abformat
	movsxd	rcx, dword ptr [rbp - 0x634]
	movsxd	rdx, dword ptr [rbp - 0x624]
	imul	rdx, rdx, 0x600
	add	rax, rdx
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	movsxd	rax, dword ptr [rbp - 0x624]
	cmp	qword ptr [rbp + rax*8 - 0x10], 0
	jne	.label_512
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x640]
	mov	rcx, qword ptr [rbp - 0x630]
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
	jmp	.label_502
.label_512:
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	mov	rcx, qword ptr [rbp - 0x630]
	sub	rax, rcx
	cmp	rax, 0x80
	jle	.label_506
	jmp	.label_500
.label_506:
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.171
	lea	rcx, [rbp - 0x620]
	movsxd	rdi, dword ptr [rbp - 0x624]
	mov	rdi, qword ptr [rbp + rdi*8 - 0x10]
	mov	r8, qword ptr [rbp - 0x630]
	sub	rdi, r8
	mov	eax, edi
	mov	dword ptr [rbp - 0x648], eax
	mov	rdi, qword ptr [rbp - 0x640]
	mov	eax, dword ptr [rbp - 0x648]
	mov	r8, qword ptr [rbp - 0x630]
	movsxd	r9, dword ptr [rbp - 0x634]
	shl	r9, 7
	add	rcx, r9
	movsxd	r9, dword ptr [rbp - 0x624]
	mov	r9, qword ptr [rbp + r9*8 - 0x10]
	add	r9, 2
	mov	qword ptr [rbp - 0x650], rcx
	mov	ecx, eax
	mov	r10, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x658], r9
	mov	r9, r10
	mov	r11, qword ptr [rbp - 0x658]
	mov	qword ptr [rsp], r11
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
.label_502:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x644]
	jg	.label_507
	cmp	dword ptr [rbp - 0x644], 0x80
	jl	.label_511
.label_507:
	jmp	.label_500
.label_511:
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 0x634]
	add	eax, 1
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_501
.label_505:
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0x624]
	add	eax, 1
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_508
.label_497:
	mov	byte ptr [byte ptr [use_abformat]],  1
.label_500:
	add	rsp, 0x660
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407da0

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_519:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_515
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_514
	jmp	.label_520
.label_520:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_513
	jmp	.label_517
.label_517:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_518
.label_514:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_513:
	jmp	.label_516
.label_516:
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_519
.label_515:
	mov	qword ptr [rbp - 8], 0
.label_518:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0xc
.label_522:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], 0
.label_524:
	cmp	dword ptr [rbp - 0x24], 0xc
	jge	.label_527
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx, dword ptr [rbp - 0x24]
	add	ecx, 0x2000e
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	esi, 0x25
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strchr
	cmp	rax, 0
	je	.label_530
	mov	byte ptr [rbp - 1], 0
	jmp	.label_526
.label_530:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	edi, 0x80
	mov	edx, edi
	lea	rcx, [rbp - 0x30]
	xor	edi, edi
	mov	esi, 1
	mov	rax, qword ptr [rax]
	mov	r8, qword ptr [rbp - 0x50]
	movzx	r9d, word ptr [rax + r8*2]
	and	r9d, 0x800
	cmp	r9d, 0
	mov	r9d, edi
	cmovne	r9d, esi
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	r10, dword ptr [rbp - 0x24]
	shl	r10, 7
	add	r10, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x54], edi
	mov	rdi, rax
	mov	rsi, r10
	mov	r9d, dword ptr [rbp - 0x54]
	call	mbsalign
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0x80
	jb	.label_525
	mov	byte ptr [rbp - 1], 0
	jmp	.label_526
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_523
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_528
.label_523:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_524
.label_527:
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_522
	mov	byte ptr [rbp - 1], 1
.label_526:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fa0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fb0

	.globl known_term_type
	.type known_term_type, @function
known_term_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:.str.178
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_533
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_536
.label_533:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_531
.label_536:
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x18], rax
.label_532:
	movabs	rax, OFFSET FLAT:G_line
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	cmp	rcx, 0x10c4
	jae	.label_537
	movabs	rsi, OFFSET FLAT:.str.179
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_535
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	fnmatch
	cmp	eax, 0
	jne	.label_534
	mov	byte ptr [rbp - 1], 1
	jmp	.label_531
.label_534:
	jmp	.label_535
.label_535:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_532
.label_537:
	mov	byte ptr [rbp - 1], 0
.label_531:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080a0

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	dword ptr [rbp - 0x34], 0
.label_562:
	cmp	dword ptr [rbp - 0x34], 5
	jae	.label_553
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x58], rdx
	ja	.label_594
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_542]]
	jmp	rcx
.label_2888:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_546
	jmp	.label_551
.label_551:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	je	.label_546
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x64], eax
	je	.label_560
	jmp	.label_563
.label_563:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x68], eax
	je	.label_564
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_571
	jmp	.label_574
.label_546:
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_575
.label_564:
	mov	dword ptr [rbp - 0x34], 1
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_575
.label_571:
	mov	dword ptr [rbp - 0x34], 4
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_575
.label_560:
	test	byte ptr [rbp - 0x11], 1
	je	.label_569
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_575
.label_569:
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_575:
	jmp	.label_539
.label_2889:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x70], ecx
	je	.label_541
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x70]
	add	eax, -0x30
	sub	eax, 8
	mov	dword ptr [rbp - 0x74], eax
	jb	.label_549
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x78], eax
	je	.label_556
	jmp	.label_561
.label_561:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_552
	jmp	.label_565
.label_565:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x80], eax
	je	.label_566
	jmp	.label_572
.label_572:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_573
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x88], eax
	je	.label_578
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_581
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x90], eax
	je	.label_585
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x94], eax
	je	.label_588
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x98], eax
	je	.label_570
	jmp	.label_595
.label_595:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_596
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_544
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_552
	jmp	.label_557
.label_549:
	mov	dword ptr [rbp - 0x34], 2
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dl, cl
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_538
.label_552:
	mov	dword ptr [rbp - 0x34], 3
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_538
.label_573:
	mov	byte ptr [rbp - 0x21], 7
	jmp	.label_538
.label_578:
	mov	byte ptr [rbp - 0x21], 8
	jmp	.label_538
.label_581:
	mov	byte ptr [rbp - 0x21], 0x1b
	jmp	.label_538
.label_585:
	mov	byte ptr [rbp - 0x21], 0xc
	jmp	.label_538
.label_588:
	mov	byte ptr [rbp - 0x21], 0xa
	jmp	.label_538
.label_570:
	mov	byte ptr [rbp - 0x21], 0xd
	jmp	.label_538
.label_596:
	mov	byte ptr [rbp - 0x21], 9
	jmp	.label_538
.label_544:
	mov	byte ptr [rbp - 0x21], 0xb
	jmp	.label_538
.label_556:
	mov	byte ptr [rbp - 0x21], 0x7f
	jmp	.label_538
.label_566:
	mov	byte ptr [rbp - 0x21], 0x20
	jmp	.label_538
.label_541:
	mov	dword ptr [rbp - 0x34], 6
	jmp	.label_538
.label_557:
	mov	rax, qword ptr [rbp - 0x40]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
.label_538:
	cmp	dword ptr [rbp - 0x34], 1
	jne	.label_591
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_591:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_539
.label_2890:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_548
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jle	.label_554
.label_548:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_577
.label_554:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
.label_577:
	jmp	.label_539
.label_2891:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	add	edx, -0x30
	sub	edx, 0xa
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0xac], edx
	jb	.label_579
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0xb0], eax
	jb	.label_567
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x61
	sub	eax, 6
	mov	dword ptr [rbp - 0xb4], eax
	jb	.label_590
	jmp	.label_593
.label_579:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_586
.label_590:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x61
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_586
.label_567:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x41
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_586
.label_593:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_586:
	jmp	.label_539
.label_2892:
	mov	dword ptr [rbp - 0x34], 0
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x40
	jl	.label_582
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7e
	jg	.label_582
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	and	edx, 0x1f
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], sil
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_559
.label_582:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3f
	jne	.label_540
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], 0x7f
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_545
.label_540:
	mov	dword ptr [rbp - 0x34], 6
.label_545:
	jmp	.label_559
.label_559:
	jmp	.label_539
.label_594:
	call	abort
.label_539:
	jmp	.label_562
.label_553:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	cmp	dword ptr [rbp - 0x34], 6
	setne	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408690

	.globl file_failure
	.type file_failure, @function
file_failure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	edi, 4
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rsi, rax
	mov	qword ptr [rbp - 0x28], rdx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	set_exit_status
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_598
	call	xalloc_die
.label_598:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	test	byte ptr [rbp - 0x21], 1
	je	.label_597
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
.label_597:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087a0

	.globl set_exit_status
	.type set_exit_status, @function
set_exit_status:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_599
	mov	dword ptr [dword ptr [exit_status]],  2
	jmp	.label_601
.label_599:
	cmp	dword ptr [dword ptr [exit_status]],  0
	jne	.label_600
	mov	dword ptr [dword ptr [exit_status]],  1
.label_600:
	jmp	.label_601
.label_601:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087f0

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x24], 0x10
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_602
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_602:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax,  qword ptr [word ptr [label_409]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl quote_name
	.type quote_name, @function
quote_name:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20e0
	mov	al, r8b
	mov	r10, qword ptr [rbp + 0x10]
	lea	r11, [rbp - 0x2068]
	mov	r8d, 0x2000
	mov	ebx, r8d
	xor	r8d, r8d
	mov	r14d, r8d
	lea	r15, [rbp - 0x2071]
	lea	r12, [rbp - 0x2060]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], edx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r10
	mov	qword ptr [rbp - 0x2068], r12
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rdi, r11
	mov	rsi, rbx
	mov	r9, r14
	mov	qword ptr [rsp], r15
	call	quote_name_buf
	mov	qword ptr [rbp - 0x2070], rax
	test	byte ptr [rbp - 0x2071], 1
	je	.label_612
	test	byte ptr [rbp - 0x41], 1
	je	.label_612
	jmp	.label_616
.label_616:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x20cc], eax
	jmp	.label_612
.label_612:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_619
	mov	rdi, qword ptr [rbp - 0x40]
	call	print_color_indicator
	mov	byte ptr [rbp - 0x20cd], al
.label_619:
	mov	byte ptr [rbp - 0x2072], 0
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_608
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_606
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	je	.label_606
	test	byte ptr [rbp - 0x2071], 1
	jne	.label_606
	mov	byte ptr [rbp - 0x2072], 1
	mov	rax, qword ptr [rbp - 0x2068]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d4], eax
.label_606:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [hostname]]
	call	file_escape
	mov	esi, 1
	mov	qword ptr [rbp - 0x2080], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	file_escape
	movabs	rdi, OFFSET FLAT:.str.212
	movabs	rcx, OFFSET FLAT:.str_4
	movabs	rdx, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x2088], rax
	mov	rsi, qword ptr [rbp - 0x2080]
	mov	rax, qword ptr [rbp - 0x2088]
	movsx	r8d, byte ptr [rax]
	cmp	r8d, 0x2f
	cmove	rcx, rdx
	mov	rax, qword ptr [rbp - 0x2088]
	mov	rdx, rcx
	mov	rcx, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x2080]
	mov	dword ptr [rbp - 0x20d8], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x2088]
	call	free
.label_608:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_603
	jmp	.label_605
.label_605:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_607
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x2090], rax
	mov	qword ptr [rbp - 0x2098], 8
	mov	rax, qword ptr [rbp - 0x2090]
	mov	qword ptr [rbp - 0x20a0], rax
	mov	rax, qword ptr [rbp - 0x20a0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20a0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20a8], rax
	mov	rax, qword ptr [rbp - 0x20a8]
	cmp	rax, qword ptr [rbp - 0x2098]
	jae	.label_610
	mov	rdi, qword ptr [rbp - 0x2090]
	mov	rsi, qword ptr [rbp - 0x2098]
	call	_obstack_newchunk
.label_610:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x2090]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x2098]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x2098]
	mov	rcx, qword ptr [rbp - 0x2090]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_607:
	jmp	.label_615
.label_615:
	jmp	.label_603
.label_603:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x2068]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	add	rcx, rdi
	mov	rdi, qword ptr [rbp - 0x2070]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	shl	eax, 1
	movsxd	r8, eax
	sub	rdi, r8
	mov	r8,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20e0], rdi
	mov	rdi, rcx
	mov	rdx, qword ptr [rbp - 0x20e0]
	mov	rcx, r8
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbp - 0x2070]
	add	rcx,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rcx
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x20e8], rax
	je	.label_611
	jmp	.label_617
.label_617:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_618
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20b0], rax
	mov	qword ptr [rbp - 0x20b8], 8
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	qword ptr [rbp - 0x20c0], rax
	mov	rax, qword ptr [rbp - 0x20c0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20c0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20c8], rax
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x20b8]
	jae	.label_620
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, qword ptr [rbp - 0x20b8]
	call	_obstack_newchunk
.label_620:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x20b0]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x20b8]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x20b0]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_618:
	jmp	.label_613
.label_613:
	jmp	.label_611
.label_611:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_609
	movabs	rdi, OFFSET FLAT:.str.214
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	test	byte ptr [rbp - 0x2072], 1
	mov	dword ptr [rbp - 0x20ec], eax
	je	.label_614
	mov	rax, qword ptr [rbp - 0x2068]
	mov	rcx, qword ptr [rbp - 0x2070]
	movsx	edi, byte ptr [rax + rcx - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20f0], eax
.label_614:
	jmp	.label_609
.label_609:
	lea	rax, [rbp - 0x2060]
	mov	rcx, qword ptr [rbp - 0x2068]
	cmp	rcx, rax
	je	.label_604
	mov	rax, qword ptr [rbp - 0x2068]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_604
	mov	rdi, qword ptr [rbp - 0x2068]
	call	free
.label_604:
	mov	rax, qword ptr [rbp - 0x2070]
	mov	cl, byte ptr [rbp - 0x2071]
	and	cl, 1
	movzx	edx, cl
	mov	esi, edx
	add	rax, rsi
	add	rsp, 0x20e0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d50

	.globl file_ignored
	.type file_ignored, @function
file_ignored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [ignore_mode]],  2
	je	.label_621
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_621
	mov	al, 1
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	mov	byte ptr [rbp - 9], al
	je	.label_622
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + rcx], 0
	mov	byte ptr [rbp - 9], al
	je	.label_622
.label_621:
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	jne	.label_623
	mov	rdi,  qword ptr [word ptr [hide_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_622
.label_623:
	mov	rdi,  qword ptr [word ptr [ignore_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	byte ptr [rbp - 9], al
.label_622:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e10

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
.label_626:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_630
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_630:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_625
	jmp	.label_627
.label_625:
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_629
	call	restore_default_color
.label_629:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdx, [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], eax
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_628
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
	mov	dword ptr [rbp - 4], 0x13
	jmp	.label_624
.label_628:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 4]
	call	signal
	mov	qword ptr [rbp - 0xa0], rax
.label_624:
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	ecx, ecx
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_626
.label_627:
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_quoting_style
	xor	r8d, r8d
	mov	r10b, r8b
	mov	dword ptr [rbp - 0x58], eax
	test	byte ptr [byte ptr [qmark_funny_chars]],  1
	mov	byte ptr [rbp - 0xb9], r10b
	je	.label_664
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0xba], al
	je	.label_633
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0xba], al
	je	.label_633
	cmp	dword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xba], al
.label_633:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_664:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_651
	mov	rcx, -1
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_646
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rcx, -1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xc8], rax
.label_646:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx]
	cmp	edx, esi
	mov	byte ptr [rbp - 0xc9], al
	jne	.label_652
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x50]
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_652:
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	jmp	.label_667
.label_651:
	test	byte ptr [rbp - 0x59], 1
	je	.label_634
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_640
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_640:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	mov	byte ptr [rbp - 0x51], 0
	jmp	.label_659
.label_634:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x51], 0
.label_659:
	jmp	.label_667
.label_667:
	test	byte ptr [rbp - 0x59], 1
	je	.label_669
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_637
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x48], 0
.label_656:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_648
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0xd8], rax
	mov	dword ptr [rbp - 0xdc], ecx
	ja	.label_654
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_665]]
	jmp	rcx
.label_2893:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_653
.label_654:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x80]
	mov	rdi, rcx
	call	memset
.label_666:
	lea	rdi, [rbp - 0x84]
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x68]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_643
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_668
.label_643:
	cmp	qword ptr [rbp - 0x90], -2
	jne	.label_645
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_668
.label_645:
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_663
	mov	qword ptr [rbp - 0x90], 1
.label_663:
	mov	edi, dword ptr [rbp - 0x84]
	call	wcwidth
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	jl	.label_635
	jmp	.label_641
.label_641:
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_650
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_641
.label_650:
	movsxd	rax, dword ptr [rbp - 0x94]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_642
.label_635:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_642:
	jmp	.label_644
.label_644:
	lea	rdi, [rbp - 0x80]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_666
.label_668:
	jmp	.label_653
.label_653:
	jmp	.label_656
.label_648:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_657
.label_637:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_662:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_632
	mov	rax, qword ptr [rbp - 0xa0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	jne	.label_649
	mov	rax, qword ptr [rbp - 0xa0]
	mov	byte ptr [rax], 0x3f
.label_649:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_662
.label_632:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
.label_657:
	jmp	.label_658
.label_669:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_631
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_638
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x48], rsi
	jmp	.label_655
.label_638:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0x48], 0
.label_647:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0xb0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_636
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_636:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_647
.label_660:
	jmp	.label_655
.label_655:
	jmp	.label_631
.label_631:
	jmp	.label_658
.label_658:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_661
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_661
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xf1], al
.label_661:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rcx, qword ptr [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rcx], al
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_639
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_639:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl print_color_indicator
	.type print_color_indicator, @function
print_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_670
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_671
	jmp	.label_672
.label_671:
	call	restore_default_color
.label_672:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	mov	rdi, qword ptr [rbp - 8]
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_670:
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095e0

	.globl file_escape
	.type file_escape, @function
file_escape:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	esi, 3
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_673:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_675
	test	byte ptr [rbp - 9], 1
	je	.label_677
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_677
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_674
.label_677:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + RFC3986]],  0
	je	.label_678
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], dl
	jmp	.label_676
.label_678:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, edx
	call	to_uchar
	movabs	rsi, OFFSET FLAT:.str.215
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rsi, eax
	add	rcx, rsi
	mov	qword ptr [rbp - 0x20], rcx
.label_676:
	jmp	.label_674
.label_674:
	jmp	.label_673
.label_675:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409720

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
.label_683:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_681
	mov	edx, 4
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fnmatch
	cmp	eax, 0
	jne	.label_679
	mov	byte ptr [rbp - 1], 1
	jmp	.label_680
.label_679:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_683
.label_681:
	mov	byte ptr [rbp - 1], 0
.label_680:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl free_ent
	.type free_ent, @function
free_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	movabs	rdi, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb0], rdi
	je	.label_684
	call	is_smack_enabled
	test	al, 1
	jne	.label_686
	jmp	.label_687
.label_686:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	free
	jmp	.label_685
.label_687:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	freecon
.label_685:
	jmp	.label_684
.label_684:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409840

	.globl needs_quoting
	.type needs_quoting, @function
needs_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 2
	mov	esi, eax
	mov	rcx, -1
	lea	rdx, [rbp - 0xa]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [filename_quoting_options]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	r9b, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	r10d, byte ptr [rax]
	movsx	r11d, byte ptr [rbp - 0xa]
	cmp	r10d, r11d
	mov	byte ptr [rbp - 0x21], r9b
	jne	.label_688
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_688:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098c0

	.globl attach
	.type attach, @function
attach:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2e
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_691
.label_689:
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_692
.label_695:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_690
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_690
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x2f
.label_690:
	jmp	.label_691
.label_691:
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_693
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_694
.label_693:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl has_capability_cache
	.type has_capability_cache, @function
has_capability_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [has_capability_cache.unsupported_device]]
	jne	.label_698
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	byte ptr [rbp - 1], 0
	jmp	.label_699
.label_698:
	mov	rdi, qword ptr [rbp - 0x10]
	call	has_capability
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x19], 1
	jne	.label_697
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_696
	jmp	.label_697
.label_696:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [has_capability_cache.unsupported_device]],  rax
.label_697:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_699:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a50

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [getfilecon_cache.unsupported_device]]
	jne	.label_703
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_702
.label_703:
	mov	dword ptr [rbp - 0x20], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_704
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	getfilecon
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_700
.label_704:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	lgetfilecon
	mov	dword ptr [rbp - 0x24], eax
.label_700:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_701
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_705
	jmp	.label_701
.label_705:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [getfilecon_cache.unsupported_device]],  rax
.label_701:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_702:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b30

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_706
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_706
.label_706:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b60

	.globl file_has_acl_cache
	.type file_has_acl_cache, @function
file_has_acl_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [file_has_acl_cache.unsupported_device]]
	jne	.label_707
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0
	jmp	.label_708
.label_707:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x18
	mov	rsi, rax
	call	file_has_acl
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jg	.label_709
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_710
	jmp	.label_709
.label_710:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [file_has_acl_cache.unsupported_device]],  rax
.label_709:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_708:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c10

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x48]
	call	areadlink_with_size
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_711
	movabs	rdi, OFFSET FLAT:.str.220
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x12], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x12]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_711:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c80

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_712
	mov	qword ptr [rbp - 8], 0
	jmp	.label_713
.label_712:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_714
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_713
.label_714:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_715
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_713
.label_715:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	je	.label_716
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_716:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	stpncpy
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	stpcpy
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_713:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d80

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_717
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_718
.label_717:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x10], rax
.label_718:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dd0

	.globl format_group_width
	.type format_group_width, @function
format_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_719
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_720
.label_719:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x10], rax
.label_720:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e20

	.globl unsigned_file_size
	.type unsigned_file_size, @function
unsigned_file_size:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	imul	rdx, rdx, 0
	add	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e50

	.globl has_capability
	.type has_capability, @function
has_capability:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rax], 0x5f
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e80

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x16
	mov	byte ptr [rbp - 5], al
	je	.label_721
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x26
	mov	byte ptr [rbp - 5], al
	je	.label_721
	mov	edi, dword ptr [rbp - 4]
	call	is_ENOTSUP
	mov	byte ptr [rbp - 5], al
.label_721:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_722
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gnu_mbswidth
	xor	esi, esi
	mov	dword ptr [rbp - 0x1c], eax
	cmp	esi, dword ptr [rbp - 0x1c]
	jle	.label_724
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_725
.label_724:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
.label_725:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_723
.label_722:
	movabs	rsi, OFFSET FLAT:.str.221
	lea	rdi, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x48], eax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_723:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f60

	.globl is_directory
	.type is_directory, @function
is_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_726
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 9
	sete	cl
	mov	byte ptr [rbp - 9], cl
.label_726:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fa0

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	dot_or_dotdot
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fd0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_727
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_728
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_728:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_729
.label_727:
	mov	byte ptr [rbp - 1], 0
.label_729:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a050

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], 0
.label_731:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_730
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0xc8
	add	rax,  qword ptr [word ptr [cwd_file]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_731
.label_730:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0b0

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0f0

	.globl xstrcoll_df_name
	.type xstrcoll_df_name, @function
xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_734
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_734
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_732
.label_734:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_733
	test	byte ptr [rbp - 0x1a], 1
	je	.label_733
	mov	dword ptr [rbp - 4], 1
	jmp	.label_732
.label_733:
	jmp	.label_735
.label_735:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_732:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl rev_xstrcoll_name
	.type rev_xstrcoll_name, @function
rev_xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1d0

	.globl rev_xstrcoll_df_name
	.type rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_738
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_738
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_737
.label_738:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_736
	test	byte ptr [rbp - 0x1a], 1
	je	.label_736
	mov	dword ptr [rbp - 4], 1
	jmp	.label_737
.label_736:
	jmp	.label_739
.label_739:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_737:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2b0

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_742
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_742
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_741
.label_742:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_740
	test	byte ptr [rbp - 0x1a], 1
	je	.label_740
	mov	dword ptr [rbp - 4], 1
	jmp	.label_741
.label_740:
	jmp	.label_743
.label_743:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_741:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a350

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a390

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_746
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_746
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_745
.label_746:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_744
	test	byte ptr [rbp - 0x1a], 1
	je	.label_744
	mov	dword ptr [rbp - 4], 1
	jmp	.label_745
.label_744:
	jmp	.label_747
.label_747:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_745:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a430

	.globl xstrcoll_extension
	.type xstrcoll_extension, @function
xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a470

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_750
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_750
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_748
.label_750:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_749
	test	byte ptr [rbp - 0x1a], 1
	je	.label_749
	mov	dword ptr [rbp - 4], 1
	jmp	.label_748
.label_749:
	jmp	.label_751
.label_751:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_748:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a510

	.globl rev_xstrcoll_extension
	.type rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a550

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_754
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_754
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_753
.label_754:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_752
	test	byte ptr [rbp - 0x1a], 1
	je	.label_752
	mov	dword ptr [rbp - 4], 1
	jmp	.label_753
.label_752:
	jmp	.label_755
.label_755:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_753:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5f0

	.globl strcmp_extension
	.type strcmp_extension, @function
strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a630

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_758
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_758
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_757
.label_758:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_756
	test	byte ptr [rbp - 0x1a], 1
	je	.label_756
	mov	dword ptr [rbp - 4], 1
	jmp	.label_757
.label_756:
	jmp	.label_759
.label_759:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_757:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6d0

	.globl rev_strcmp_extension
	.type rev_strcmp_extension, @function
rev_strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a710

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_762
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_762
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_761
.label_762:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_760
	test	byte ptr [rbp - 0x1a], 1
	je	.label_760
	mov	dword ptr [rbp - 4], 1
	jmp	.label_761
.label_760:
	jmp	.label_763
.label_763:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_761:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7b0

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_766
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_766
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_764
.label_766:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_765
	test	byte ptr [rbp - 0x1a], 1
	je	.label_765
	mov	dword ptr [rbp - 4], 1
	jmp	.label_764
.label_765:
	jmp	.label_767
.label_767:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_764:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a890

	.globl rev_xstrcoll_size
	.type rev_xstrcoll_size, @function
rev_xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8d0

	.globl rev_xstrcoll_df_size
	.type rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_770
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_770
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_769
.label_770:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_768
	test	byte ptr [rbp - 0x1a], 1
	je	.label_768
	mov	dword ptr [rbp - 4], 1
	jmp	.label_769
.label_768:
	jmp	.label_771
.label_771:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_769:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl strcmp_size
	.type strcmp_size, @function
strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9b0

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_774
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_774
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_773
.label_774:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_772
	test	byte ptr [rbp - 0x1a], 1
	je	.label_772
	mov	dword ptr [rbp - 4], 1
	jmp	.label_773
.label_772:
	jmp	.label_775
.label_775:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_773:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa50

	.globl rev_strcmp_size
	.type rev_strcmp_size, @function
rev_strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa90

	.globl rev_strcmp_df_size
	.type rev_strcmp_df_size, @function
rev_strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_778
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_778
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_777
.label_778:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_776
	test	byte ptr [rbp - 0x1a], 1
	je	.label_776
	mov	dword ptr [rbp - 4], 1
	jmp	.label_777
.label_776:
	jmp	.label_779
.label_779:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_777:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab30

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab60

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_781
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_781
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_780
.label_781:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_783
	test	byte ptr [rbp - 0x1a], 1
	je	.label_783
	mov	dword ptr [rbp - 4], 1
	jmp	.label_780
.label_783:
	jmp	.label_782
.label_782:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_780:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac00

	.globl rev_xstrcoll_version
	.type rev_xstrcoll_version, @function
rev_xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac30

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_786
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_786
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_784
.label_786:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_785
	test	byte ptr [rbp - 0x1a], 1
	je	.label_785
	mov	dword ptr [rbp - 4], 1
	jmp	.label_784
.label_785:
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_784:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acd0

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad10

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_790
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_790
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_789
.label_790:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_788
	test	byte ptr [rbp - 0x1a], 1
	je	.label_788
	mov	dword ptr [rbp - 4], 1
	jmp	.label_789
.label_788:
	jmp	.label_791
.label_791:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_789:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40adb0

	.globl rev_xstrcoll_mtime
	.type rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_794
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_794
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_793
.label_794:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_792
	test	byte ptr [rbp - 0x1a], 1
	je	.label_792
	mov	dword ptr [rbp - 4], 1
	jmp	.label_793
.label_792:
	jmp	.label_795
.label_795:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_793:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae90

	.globl strcmp_mtime
	.type strcmp_mtime, @function
strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aed0

	.globl strcmp_df_mtime
	.type strcmp_df_mtime, @function
strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_798
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_798
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_797
.label_798:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_796
	test	byte ptr [rbp - 0x1a], 1
	je	.label_796
	mov	dword ptr [rbp - 4], 1
	jmp	.label_797
.label_796:
	jmp	.label_799
.label_799:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_797:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af70

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afb0

	.globl rev_strcmp_df_mtime
	.type rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_802
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_802
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_800
.label_802:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_801
	test	byte ptr [rbp - 0x1a], 1
	je	.label_801
	mov	dword ptr [rbp - 4], 1
	jmp	.label_800
.label_801:
	jmp	.label_803
.label_803:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_800:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b050

	.globl xstrcoll_ctime
	.type xstrcoll_ctime, @function
xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b090

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_806
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_806
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_804
.label_806:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_805
	test	byte ptr [rbp - 0x1a], 1
	je	.label_805
	mov	dword ptr [rbp - 4], 1
	jmp	.label_804
.label_805:
	jmp	.label_807
.label_807:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_804:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b130

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b170

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_810
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_810
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_809
.label_810:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_808
	test	byte ptr [rbp - 0x1a], 1
	je	.label_808
	mov	dword ptr [rbp - 4], 1
	jmp	.label_809
.label_808:
	jmp	.label_811
.label_811:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b210

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b250

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_814
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_814
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_813
.label_814:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_812
	test	byte ptr [rbp - 0x1a], 1
	je	.label_812
	mov	dword ptr [rbp - 4], 1
	jmp	.label_813
.label_812:
	jmp	.label_815
.label_815:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_813:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2f0

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b330

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_818
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_818
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_817
.label_818:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_816
	test	byte ptr [rbp - 0x1a], 1
	je	.label_816
	mov	dword ptr [rbp - 4], 1
	jmp	.label_817
.label_816:
	jmp	.label_819
.label_819:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_817:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3d0

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_822
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_822
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_820
.label_822:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_821
	test	byte ptr [rbp - 0x1a], 1
	je	.label_821
	mov	dword ptr [rbp - 4], 1
	jmp	.label_820
.label_821:
	jmp	.label_823
.label_823:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_820:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4b0

	.globl rev_xstrcoll_atime
	.type rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4f0

	.globl rev_xstrcoll_df_atime
	.type rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_826
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_826
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_824
.label_826:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_825
	test	byte ptr [rbp - 0x1a], 1
	je	.label_825
	mov	dword ptr [rbp - 4], 1
	jmp	.label_824
.label_825:
	jmp	.label_827
.label_827:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_824:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b590

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5d0

	.globl strcmp_df_atime
	.type strcmp_df_atime, @function
strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_830
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_830
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_829
.label_830:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_828
	test	byte ptr [rbp - 0x1a], 1
	je	.label_828
	mov	dword ptr [rbp - 4], 1
	jmp	.label_829
.label_828:
	jmp	.label_831
.label_831:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_829:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b670

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6b0

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_834
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_834
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_833
.label_834:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_832
	test	byte ptr [rbp - 0x1a], 1
	je	.label_832
	mov	dword ptr [rbp - 4], 1
	jmp	.label_833
.label_832:
	jmp	.label_835
.label_835:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_833:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b750

	.globl cmp_name
	.type cmp_name, @function
cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b780

	.globl xstrcoll
	.type xstrcoll, @function
xstrcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcoll
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_836
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.223
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quote_n
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	mov	al, 0
	call	error
	xor	edi, edi
	call	set_exit_status
	movabs	rdi, OFFSET FLAT:failed_strcoll
	mov	esi, 1
	call	longjmp
.label_836:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b830

	.globl is_linked_directory
	.type is_linked_directory, @function
is_linked_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_837
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 0xa8], 9
	mov	byte ptr [rbp - 9], al
	je	.label_837
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	byte ptr [rbp - 9], dl
.label_837:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b890

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x2e
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	esi, eax
	call	strrchr
	mov	esi, 0x2e
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strrchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x38], rax
	je	.label_841
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_838
.label_841:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_838
.label_838:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rax
	je	.label_842
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_839
.label_842:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_839
.label_839:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_840
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_843
.label_840:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x54], eax
.label_843:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b980

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x48]
	jge	.label_844
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_846
.label_844:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x48]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x20], esi
.label_846:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_845
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_847
.label_845:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x24], eax
.label_847:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba10

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	filevercmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba40

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_849
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_848
.label_849:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_848:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bae0

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_851
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_850
.label_851:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_850:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb80

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_853
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_852
.label_853:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_852:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc20

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2e0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	set_normal_color
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_864
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_856
	xor	eax, eax
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_859
.label_856:
	mov	eax,  dword ptr [dword ptr [inode_number_width]]
	mov	dword ptr [rbp - 0x2ac], eax
.label_859:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	ecx, 0x28c
	mov	esi, ecx
	lea	rdi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b0], eax
	call	format_inode
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 0x2b0]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2b4], eax
.label_864:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_862
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_865
	xor	eax, eax
	mov	dword ptr [rbp - 0x2b8], eax
	jmp	.label_857
.label_865:
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	mov	dword ptr [rbp - 0x2b8], eax
.label_857:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0xb8], 1
	mov	dword ptr [rbp - 0x2bc], eax
	jne	.label_861
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_855
.label_861:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2c8], rax
.label_855:
	mov	rax, qword ptr [rbp - 0x2c8]
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2cc], eax
.label_862:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_863
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_854
	xor	eax, eax
	mov	dword ptr [rbp - 0x2d0], eax
	jmp	.label_858
.label_854:
	mov	eax,  dword ptr [dword ptr [scontext_width]]
	mov	dword ptr [rbp - 0x2d0], eax
.label_858:
	mov	eax, dword ptr [rbp - 0x2d0]
	movabs	rdi, OFFSET FLAT:.str.224
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0xb0]
	mov	esi, eax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2d4], eax
.label_863:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x2a8], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_860
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	and	al, 1
	movzx	edx, al
	mov	r8d, edx
	add	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2a8], r8
.label_860:
	mov	rax, qword ptr [rbp - 0x2a8]
	add	rsp, 0x2e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be50

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x10], 0
.label_872:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_870
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_866
	mov	rdi, qword ptr [rbp - 0x20]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_869
.label_866:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_869
.label_869:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_867
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_873
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	cmp	rax,  qword ptr [word ptr [line_length]]
	jae	.label_868
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, 2
	cmp	rcx, rax
	ja	.label_868
.label_873:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x29], 0x20
	jmp	.label_871
.label_868:
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], 0xa
.label_871:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	movsx	edi, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_867:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	print_file_name_and_frills
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_872
.label_870:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfa0

	.globl print_many_per_line
	.type print_many_per_line, @function
print_many_per_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	edi, 1
	call	calculate_columns
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rcx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], 0
.label_874:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_878
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_875:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	print_file_name_and_frills
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x60], rax
	jb	.label_876
	jmp	.label_877
.label_876:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_875
.label_877:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_874
.label_878:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c110

	.globl print_horizontal
	.type print_horizontal, @function
print_horizontal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	edi, edi
	mov	qword ptr [rbp - 0x10], 0
	call	calculate_columns
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_file_name_and_frills
	mov	qword ptr [rbp - 8], 1
	mov	qword ptr [rbp - 0x48], rax
.label_880:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_879
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rdx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_881
	mov	edi, 0xa
	call	putchar_unlocked
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_882
.label_881:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_882:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_file_name_and_frills
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_880
.label_879:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c260

	.globl set_normal_color
	.type set_normal_color, @function
set_normal_color:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_883
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_884
	jmp	.label_883
.label_884:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x40
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_883:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c2c0

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1590
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	je	.label_928
	lea	rsi, [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	filemodestring
	jmp	.label_943
.label_928:
	mov	esi, 0x3f
	mov	eax, 0xa
	mov	edx, eax
	lea	rcx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0xa8]
	mov	edi, eax
	mov	r8b,  byte ptr [byte ptr [+ (rdi * 1) + filetype_letter]]
	mov	byte ptr [rbp - 0x14], r8b
	add	rcx, 1
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 9], 0
.label_943:
	test	byte ptr [byte ptr [any_has_acl]],  1
	jne	.label_896
	mov	byte ptr [rbp - 0xa], 0
	jmp	.label_899
.label_896:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 1
	jne	.label_902
	mov	byte ptr [rbp - 0xa], 0x2e
	jmp	.label_906
.label_902:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 2
	jne	.label_908
	mov	byte ptr [rbp - 0xa], 0x2b
.label_908:
	jmp	.label_906
.label_906:
	jmp	.label_899
.label_899:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	test	eax, eax
	mov	dword ptr [rbp - 0x14cc], eax
	je	.label_913
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14d0], eax
	je	.label_920
	jmp	.label_924
.label_924:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x14d4], eax
	je	.label_925
	jmp	.label_932
.label_920:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xeb8], rax
	mov	qword ptr [rbp - 0xeb0], rdx
	mov	rax, qword ptr [rbp - 0xeb8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xeb0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_889
.label_913:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xec8], rax
	mov	qword ptr [rbp - 0xec0], rdx
	mov	rax, qword ptr [rbp - 0xec8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xec0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_889
.label_925:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xed8], rax
	mov	qword ptr [rbp - 0xed0], rdx
	mov	rax, qword ptr [rbp - 0xed8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xed0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_889
.label_932:
	call	abort
.label_889:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_917
	mov	eax, 0x15
	mov	esi, eax
	lea	rdi, [rbp - 0xef0]
	mov	rcx, qword ptr [rbp - 0xe60]
	mov	edx,  dword ptr [dword ptr [inode_number_width]]
	mov	r8, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14d8], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x14e0], rcx
	call	format_inode
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0x14e0]
	mov	edx, dword ptr [rbp - 0x14d8]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x14e4], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_917:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_891
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_895
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x14f0], rax
	jmp	.label_900
.label_895:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x1180]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x14f0], rax
.label_900:
	mov	rax, qword ptr [rbp - 0x14f0]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1188], rax
	mov	ecx,  dword ptr [dword ptr [block_size_width]]
	mov	rdi, qword ptr [rbp - 0x1188]
	mov	dword ptr [rbp - 0x14f4], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x14f4]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x118c], ecx
.label_934:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x118c]
	jge	.label_927
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x118c]
	add	eax, -1
	mov	dword ptr [rbp - 0x118c], eax
	jmp	.label_934
.label_927:
	jmp	.label_897
.label_897:
	mov	rax, qword ptr [rbp - 0x1188]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1188], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_885
	jmp	.label_897
.label_885:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_891:
	lea	rdx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	mov	qword ptr [rbp - 0x1500], rdx
	mov	qword ptr [rbp - 0x1508], rdi
	mov	dword ptr [rbp - 0x150c], ecx
	jne	.label_923
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x1518], rax
	jmp	.label_938
.label_923:
	lea	rsi, [rbp - 0x11b0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1518], rax
.label_938:
	mov	rax, qword ptr [rbp - 0x1518]
	movabs	rsi, OFFSET FLAT:.str.227
	mov	rdi, qword ptr [rbp - 0x1508]
	mov	rdx, qword ptr [rbp - 0x1500]
	mov	ecx, dword ptr [rbp - 0x150c]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x151c], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [dired]],  1
	je	.label_893
	jmp	.label_887
.label_887:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x1520], eax
	jmp	.label_893
.label_893:
	jmp	.label_901
.label_901:
	test	byte ptr [byte ptr [print_owner]],  1
	jne	.label_903
	test	byte ptr [byte ptr [print_group]],  1
	jne	.label_903
	test	byte ptr [byte ptr [print_author]],  1
	jne	.label_903
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_910
.label_903:
	jmp	.label_912
.label_912:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1524], eax
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_921
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [owner_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_921:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_942
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	esi,  dword ptr [dword ptr [group_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_group
.label_942:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_892
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [author_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_892:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_904
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0xb0]
	mov	edx,  dword ptr [dword ptr [scontext_width]]
	call	format_user_or_group
.label_904:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
.label_910:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_916
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_922
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_916
.label_922:
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	edx,  dword ptr [dword ptr [major_device_number_width]]
	add	edx, 2
	add	edx,  dword ptr [dword ptr [minor_device_number_width]]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x11f4], ecx
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1528], ecx
	mov	qword ptr [rbp - 0x1530], rdi
	jle	.label_935
	xor	eax, eax
	mov	dword ptr [rbp - 0x1534], eax
	jmp	.label_888
.label_935:
	mov	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1534], eax
.label_888:
	mov	eax, dword ptr [rbp - 0x1534]
	mov	ecx, dword ptr [rbp - 0x1528]
	add	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	dword ptr [rbp - 0x1538], ecx
	call	gnu_dev_major
	lea	rsi, [rbp - 0x11d0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	r8d,  dword ptr [dword ptr [minor_device_number_width]]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	qword ptr [rbp - 0x1540], rax
	mov	dword ptr [rbp - 0x1544], r8d
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x11f0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	movabs	rsi, OFFSET FLAT:.str.228
	mov	rdi, qword ptr [rbp - 0x1530]
	mov	edx, dword ptr [rbp - 0x1538]
	mov	rcx, qword ptr [rbp - 0x1540]
	mov	r8d, dword ptr [rbp - 0x1544]
	mov	r9, rax
	mov	al, 0
	call	sprintf
	mov	edx,  dword ptr [dword ptr [file_size_width]]
	add	edx, 1
	mov	rcx, qword ptr [rbp - 0xe60]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0xe60], rcx
	mov	dword ptr [rbp - 0x1548], eax
	jmp	.label_930
.label_916:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_940
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x1550], rax
	jmp	.label_944
.label_940:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x1480]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	mov	rdi, rax
	call	human_readable
	mov	qword ptr [rbp - 0x1550], rax
.label_944:
	mov	rax, qword ptr [rbp - 0x1550]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1488], rax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	rdi, qword ptr [rbp - 0x1488]
	mov	dword ptr [rbp - 0x1554], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x1554]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x148c], ecx
.label_907:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x148c]
	jge	.label_914
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x148c]
	add	eax, -1
	mov	dword ptr [rbp - 0x148c], eax
	jmp	.label_907
.label_914:
	jmp	.label_926
.label_926:
	mov	rax, qword ptr [rbp - 0x1488]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1488], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_929
	jmp	.label_926
.label_929:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_930:
	mov	qword ptr [rbp - 0xe58], 0
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_886
	lea	rdx, [rbp - 0xea8]
	lea	rsi, [rbp - 0xe70]
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_886
	mov	rdi,  qword ptr [word ptr [current_time]]
	mov	rsi,  qword ptr [word ptr [label_40]]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	cmp	eax, 0
	jge	.label_911
	movabs	rdi, OFFSET FLAT:current_time
	call	gettime
.label_911:
	mov	rax,  qword ptr [word ptr [current_time]]
	sub	rax, 0xf0c2ac
	mov	qword ptr [rbp - 0x14a0], rax
	mov	rax,  qword ptr [word ptr [label_40]]
	mov	qword ptr [rbp - 0x1498], rax
	mov	rdi, qword ptr [rbp - 0x14a0]
	mov	rsi, qword ptr [rbp - 0x1498]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	xor	r8d, r8d
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1555], r9b
	jge	.label_890
	mov	rdi, qword ptr [rbp - 0xe70]
	mov	rsi, qword ptr [rbp - 0xe68]
	mov	rdx,  qword ptr [word ptr [current_time]]
	mov	rcx,  qword ptr [word ptr [label_40]]
	call	timespec_cmp
	cmp	eax, 0
	setl	r8b
	mov	byte ptr [rbp - 0x1555], r8b
.label_890:
	mov	al, byte ptr [rbp - 0x1555]
	mov	ecx, 0x3e9
	mov	esi, ecx
	lea	rcx, [rbp - 0xea8]
	and	al, 1
	mov	byte ptr [rbp - 0x14a1], al
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	al, byte ptr [rbp - 0x14a1]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	rdx, qword ptr [rbp - 0xe68]
	mov	r9d, edx
	and	al, 1
	movzx	edx, al
	call	align_nstrftime
	mov	qword ptr [rbp - 0xe58], rax
.label_886:
	cmp	qword ptr [rbp - 0xe58], 0
	jne	.label_909
	mov	rax, qword ptr [rbp - 0xe60]
	cmp	byte ptr [rax], 0
	jne	.label_898
.label_909:
	mov	rax, qword ptr [rbp - 0xe58]
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 0
	jmp	.label_915
.label_898:
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0x1560], rdi
	call	long_time_expected_width
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	mov	dword ptr [rbp - 0x1564], eax
	jne	.label_936
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x1570], rax
	jmp	.label_939
.label_936:
	lea	rsi, [rbp - 0x14c0]
	mov	rdi, qword ptr [rbp - 0xe70]
	call	timetostr
	mov	qword ptr [rbp - 0x1570], rax
.label_939:
	mov	rax, qword ptr [rbp - 0x1570]
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0x1560]
	mov	edx, dword ptr [rbp - 0x1564]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x1574], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_915:
	jmp	.label_937
.label_937:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1578], eax
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:dired_obstack
	lea	rax, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xe60]
	sub	rcx, rax
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x14c8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 6
	jne	.label_931
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_894
	jmp	.label_941
.label_941:
	movabs	rdi, OFFSET FLAT:.str.229
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 4
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x157c], eax
	mov	esi, 1
	xor	eax, eax
	mov	edx, eax
	lea	rcx, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xe60]
	sub	r8, rcx
	add	r8, qword ptr [rbp - 0x14c8]
	add	r8, 4
	mov	rcx, r8
	call	print_name_with_quoting
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	qword ptr [rbp - 0x1588], rax
	je	.label_905
	mov	edi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0xac]
	call	print_type_indicator
	mov	byte ptr [rbp - 0x1589], al
.label_905:
	jmp	.label_894
.label_894:
	jmp	.label_933
.label_931:
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_918
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	mov	byte ptr [rbp - 0x158a], al
.label_918:
	jmp	.label_933
.label_933:
	add	rsp, 0x1590
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cee0

	.globl format_inode
	.type format_inode, @function
format_inode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x15
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	rcx, qword ptr [rbp - 0x10]
	ja	.label_945
	jmp	.label_947
.label_945:
	movabs	rdi, OFFSET FLAT:.str.226
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xfac
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.format_inode
	call	__assert_fail
.label_947:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0xb8], 1
	je	.label_946
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_946
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	call	umaxtostr
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_948
.label_946:
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_948
.label_948:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf90

	.globl print_name_with_quoting
	.type print_name_with_quoting, @function
print_name_with_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 9], 1
	je	.label_953
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_955
.label_953:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_955:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_954
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	esi, al
	call	get_color_indicator
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_949
.label_954:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_949
.label_949:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x30], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x51], dl
	je	.label_956
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x52], al
	jne	.label_951
	mov	edi, 4
	call	is_colored
	mov	byte ptr [rbp - 0x52], al
.label_951:
	mov	al, byte ptr [rbp - 0x52]
	mov	byte ptr [rbp - 0x51], al
.label_956:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xc4]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	r9, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 8]
	mov	r8, qword ptr [r8 + 0x10]
	mov	r10, rsp
	mov	qword ptr [r10], r8
	and	al, 1
	movzx	r8d, al
	call	quote_name
	mov	qword ptr [rbp - 0x40], rax
	call	process_signals
	test	byte ptr [rbp - 0x31], 1
	je	.label_952
	call	prep_non_filename_text
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_950
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rbp - 0x40]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	rsi, rax
	je	.label_950
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x170
	mov	rdi, rax
	call	put_indicator
.label_950:
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d120

	.globl print_type_indicator
	.type print_type_indicator, @function
print_type_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	mov	al, byte ptr [rbp - 1]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	and	al, 1
	movzx	edi, al
	call	get_type_indicator
	mov	byte ptr [rbp - 0xd], al
	cmp	byte ptr [rbp - 0xd], 0
	je	.label_957
	jmp	.label_958
.label_958:
	movsx	edi, byte ptr [rbp - 0xd]
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_957
.label_957:
	cmp	byte ptr [rbp - 0xd], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1a0

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	je	.label_1001
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdx + 0xac]
	mov	dword ptr [rbp - 0x2c], esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dil, byte ptr [rdx + 0xb9]
	test	dil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1008
.label_1001:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	je	.label_966
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb9], 1
	je	.label_966
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_970
.label_966:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x3c], ecx
.label_970:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb9]
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x30], eax
.label_1008:
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_982
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_994
	jmp	.label_982
.label_994:
	mov	dword ptr [rbp - 0x10], 0xc
	jmp	.label_992
.label_982:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_995
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xa8]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + get_color_indicator.filetype_indicator]]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_991
.label_995:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1002
	mov	dword ptr [rbp - 0x10], 5
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_1009
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_1013
	jmp	.label_1009
.label_1013:
	mov	dword ptr [rbp - 0x10], 0x10
	jmp	.label_1011
.label_1009:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_969
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_967
	jmp	.label_969
.label_967:
	mov	dword ptr [rbp - 0x10], 0x11
	jmp	.label_972
.label_969:
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_977
	jmp	.label_980
.label_977:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xc0], 1
	je	.label_980
	mov	dword ptr [rbp - 0x10], 0x15
	jmp	.label_983
.label_980:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_986
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_993
	jmp	.label_986
.label_993:
	mov	dword ptr [rbp - 0x10], 0xe
	jmp	.label_997
.label_986:
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x28]
	jae	.label_999
	mov	edi, 0x16
	call	is_colored
	test	al, 1
	jne	.label_1006
	jmp	.label_999
.label_1006:
	mov	dword ptr [rbp - 0x10], 0x16
.label_999:
	jmp	.label_997
.label_997:
	jmp	.label_983
.label_983:
	jmp	.label_972
.label_972:
	jmp	.label_1011
.label_1011:
	jmp	.label_990
.label_1002:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1012
	mov	dword ptr [rbp - 0x10], 6
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_965
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_965
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_973
	jmp	.label_965
.label_973:
	mov	dword ptr [rbp - 0x10], 0x14
	jmp	.label_974
.label_965:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_979
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_968
	jmp	.label_979
.label_968:
	mov	dword ptr [rbp - 0x10], 0x13
	jmp	.label_987
.label_979:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_996
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_998
	jmp	.label_996
.label_998:
	mov	dword ptr [rbp - 0x10], 0x12
.label_996:
	jmp	.label_987
.label_987:
	jmp	.label_974
.label_974:
	jmp	.label_989
.label_1012:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1003
	mov	dword ptr [rbp - 0x10], 7
	jmp	.label_985
.label_1003:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1010
	mov	dword ptr [rbp - 0x10], 8
	jmp	.label_984
.label_1010:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1014
	mov	dword ptr [rbp - 0x10], 9
	jmp	.label_959
.label_1014:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_964
	mov	dword ptr [rbp - 0x10], 0xa
	jmp	.label_981
.label_964:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1015
	mov	dword ptr [rbp - 0x10], 0xb
	jmp	.label_978
.label_1015:
	mov	dword ptr [rbp - 0x10], 0xd
.label_978:
	jmp	.label_981
.label_981:
	jmp	.label_959
.label_959:
	jmp	.label_984
.label_984:
	jmp	.label_985
.label_985:
	jmp	.label_989
.label_989:
	jmp	.label_990
.label_990:
	jmp	.label_991
.label_991:
	jmp	.label_992
.label_992:
	mov	qword ptr [rbp - 0x18], 0
	cmp	dword ptr [rbp - 0x10], 5
	jne	.label_976
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_963:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_960
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1007
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rdx
	mov	rdx, rcx
	call	c_strncasecmp
	cmp	eax, 0
	jne	.label_1007
	jmp	.label_960
.label_1007:
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_963
.label_960:
	jmp	.label_976
.label_976:
	cmp	dword ptr [rbp - 0x10], 7
	jne	.label_971
	cmp	dword ptr [rbp - 0x30], 0
	jne	.label_971
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_975
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_975
	jmp	.label_962
.label_975:
	mov	dword ptr [rbp - 0x10], 0xd
.label_962:
	jmp	.label_971
.label_971:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_988
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1004
.label_988:
	movabs	rax, OFFSET FLAT:color_indicator
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x48], rax
.label_1004:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1005
.label_1000:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_1005
.label_1005:
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6e0

	.globl get_type_indicator
	.type get_type_indicator, @function
get_type_indicator:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	test	byte ptr [rbp - 1], 1
	je	.label_1037
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_1042
	jmp	.label_1020
.label_1037:
	cmp	dword ptr [rbp - 0xc], 5
	jne	.label_1020
.label_1042:
	test	byte ptr [rbp - 1], 1
	je	.label_1024
	cmp	dword ptr [dword ptr [indicator_style]],  3
	jne	.label_1024
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_1024
	mov	byte ptr [rbp - 0xd], 0x2a
	jmp	.label_1030
.label_1024:
	mov	byte ptr [rbp - 0xd], 0
.label_1030:
	jmp	.label_1019
.label_1020:
	test	byte ptr [rbp - 1], 1
	je	.label_1035
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1038
	jmp	.label_1016
.label_1035:
	cmp	dword ptr [rbp - 0xc], 3
	je	.label_1038
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_1016
.label_1038:
	mov	byte ptr [rbp - 0xd], 0x2f
	jmp	.label_1018
.label_1016:
	cmp	dword ptr [dword ptr [indicator_style]],  1
	jne	.label_1021
	mov	byte ptr [rbp - 0xd], 0
	jmp	.label_1017
.label_1021:
	test	byte ptr [rbp - 1], 1
	je	.label_1026
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1028
	jmp	.label_1031
.label_1026:
	cmp	dword ptr [rbp - 0xc], 6
	jne	.label_1031
.label_1028:
	mov	byte ptr [rbp - 0xd], 0x40
	jmp	.label_1036
.label_1031:
	test	byte ptr [rbp - 1], 1
	je	.label_1039
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_1041
	jmp	.label_1023
.label_1039:
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1023
.label_1041:
	mov	byte ptr [rbp - 0xd], 0x7c
	jmp	.label_1033
.label_1023:
	test	byte ptr [rbp - 1], 1
	je	.label_1022
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_1025
	jmp	.label_1027
.label_1022:
	cmp	dword ptr [rbp - 0xc], 7
	jne	.label_1027
.label_1025:
	mov	byte ptr [rbp - 0xd], 0x3d
	jmp	.label_1029
.label_1027:
	test	byte ptr [rbp - 1], 1
	je	.label_1032
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1034
	jmp	.label_1032
.label_1034:
	mov	byte ptr [rbp - 0xd], 0x3e
	jmp	.label_1040
.label_1032:
	mov	byte ptr [rbp - 0xd], 0
.label_1040:
	jmp	.label_1029
.label_1029:
	jmp	.label_1033
.label_1033:
	jmp	.label_1036
.label_1036:
	jmp	.label_1017
.label_1017:
	jmp	.label_1018
.label_1018:
	jmp	.label_1019
.label_1019:
	movsx	eax, byte ptr [rbp - 0xd]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8a0

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1048
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1043
	lea	rsi, [rbp - 0x2a0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2b0], rax
	jmp	.label_1051
.label_1043:
	movsxd	rax,  dword ptr [dword ptr [inode_number_width]]
	mov	qword ptr [rbp - 0x2b0], rax
.label_1051:
	mov	rax, qword ptr [rbp - 0x2b0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1048:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1047
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1050
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_1052
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x2b8], rax
	jmp	.label_1054
.label_1052:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2b8], rax
.label_1054:
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1045
.label_1050:
	movsxd	rax,  dword ptr [dword ptr [block_size_width]]
	mov	qword ptr [rbp - 0x2c0], rax
.label_1045:
	mov	rax, qword ptr [rbp - 0x2c0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1047:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1044
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1046
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_1053
.label_1046:
	movsxd	rax,  dword ptr [dword ptr [scontext_width]]
	mov	qword ptr [rbp - 0x2c8], rax
.label_1053:
	mov	rax, qword ptr [rbp - 0x2c8]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1044:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xc4]
	call	quote_name_width
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1049
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	get_type_indicator
	mov	byte ptr [rbp - 0x2a1], al
	movsx	edx, byte ptr [rbp - 0x2a1]
	cmp	edx, 0
	setne	al
	and	al, 1
	movzx	edx, al
	movsxd	r8, edx
	add	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], r8
.label_1049:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x2d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dac0

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x2048
	lea	rax, [rbp - 0x2028]
	mov	ecx, 0x2000
	mov	r8d, ecx
	lea	r9, [rbp - 0x2030]
	lea	r10, [rbp - 0x2031]
	lea	r11, [rbp - 0x2020]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x2028], r11
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	ebx, dword ptr [rbp - 0x1c]
	mov	rdi, rax
	mov	rsi, r8
	mov	r8d, ebx
	mov	qword ptr [rsp], r10
	call	quote_name_buf
	lea	rcx, [rbp - 0x2020]
	mov	rdx, qword ptr [rbp - 0x2028]
	cmp	rdx, rcx
	mov	qword ptr [rbp - 0x2040], rax
	je	.label_1055
	mov	rax, qword ptr [rbp - 0x2028]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1055
	mov	rdi, qword ptr [rbp - 0x2028]
	call	free
.label_1055:
	mov	al, byte ptr [rbp - 0x2031]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2030], rdx
	mov	rax, qword ptr [rbp - 0x2030]
	add	rsp, 0x2048
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db90

	.globl calculate_columns
	.type calculate_columns, @function
calculate_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rcx,  qword ptr [word ptr [max_idx]]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1059
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1070
.label_1059:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x50], rax
.label_1070:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20], rax
	call	init_column_info
	mov	qword ptr [rbp - 0x10], 0
.label_1069:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1064
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_1068:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1063
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_1065
	test	byte ptr [rbp - 1], 1
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	esi, esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, esi
	mov	rcx, qword ptr [rbp - 0x60]
	div	rcx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, rdi
	xor	esi, esi
	mov	edx, esi
	mov	r8, qword ptr [rbp - 0x68]
	div	r8
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1060
.label_1057:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x70], rdx
.label_1060:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 2
	xor	edx, edx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, qword ptr [rbp - 0x38]
	cmove	ecx, edx
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x18
	add	rsi,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rax, qword ptr [rsi + rax*8]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1056
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rax, qword ptr [rax + 8]
	cmp	rax,  qword ptr [word ptr [line_length]]
	setb	sil
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	and	sil, 1
	mov	byte ptr [rax], sil
.label_1056:
	jmp	.label_1065
.label_1065:
	jmp	.label_1061
.label_1061:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1068
.label_1063:
	jmp	.label_1066
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1069
.label_1064:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1062:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_1058
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_1067
	jmp	.label_1058
.label_1067:
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1062
.label_1058:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de20

	.globl indent
	.type indent, @function
indent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1073:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1072
	cmp	qword ptr [word ptr [tabsize]],  0
	je	.label_1075
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	jbe	.label_1075
	mov	edi, 9
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [tabsize]]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, rdx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [word ptr [tabsize]]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1074
.label_1075:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x20], eax
.label_1074:
	jmp	.label_1073
.label_1072:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40def0

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax,  qword ptr [word ptr [max_idx]]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1086
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1079
.label_1086:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x48], rax
.label_1079:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1083
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [max_idx]]
	shr	rcx, 1
	cmp	rax, rcx
	jae	.label_1081
	mov	eax, 0x30
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1088
.label_1081:
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi,  qword ptr [word ptr [max_idx]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x18], rax
.label_1088:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1077
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1076
.label_1077:
	call	xalloc_die
.label_1076:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	shr	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 8], rax
.label_1080:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1078
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1080
.label_1078:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [init_column_info.column_info_alloc]],  rax
.label_1083:
	mov	qword ptr [rbp - 8], 0
.label_1087:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1082
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	imul	rax, rax, 3
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x40], 0
.label_1089:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_1085
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], 3
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1089
.label_1085:
	jmp	.label_1084
.label_1084:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1087
.label_1082:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e150

	.globl format_user
	.type format_user, @function
format_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_1090
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1093
.label_1090:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1091
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1092
.label_1091:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x20], rax
.label_1092:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1093:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1d0

	.globl format_group
	.type format_group, @function
format_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_1094
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1097
.label_1094:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1095
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1096
.label_1095:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x20], rax
.label_1096:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e250

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1098
	xor	esi, esi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	call	gnu_mbswidth
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	cmp	esi, dword ptr [rbp - 0x24]
	jle	.label_1102
	xor	eax, eax
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1100
.label_1102:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
.label_1100:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], eax
	call	strlen
	movsxd	rsi, dword ptr [rbp - 0x28]
	add	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
.label_1101:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x28], ecx
	cmp	eax, 0
	jne	.label_1101
	jmp	.label_1099
.label_1098:
	movabs	rdi, OFFSET FLAT:.str.230
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x3c], eax
.label_1099:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e340

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	test	byte ptr [byte ptr [use_abformat]],  1
	je	.label_1103
	movabs	rax, OFFSET FLAT:abformat
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	imul	rdi, rdi, 0x600
	add	rax, rdi
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1104
.label_1103:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rdx,  qword ptr [word ptr [+ (rdx * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x40], rdx
.label_1104:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	call	nstrftime
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3f0

	.globl long_time_expected_width
	.type long_time_expected_width, @function
long_time_expected_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x440
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_1105
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 0x40]
	mov	qword ptr [rbp - 8], 0
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_1106
	mov	eax, 0x3e9
	mov	esi, eax
	xor	eax, eax
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rbp - 0x430]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	edx, eax
	mov	r9d, eax
	call	align_nstrftime
	mov	qword ptr [rbp - 0x438], rax
	cmp	qword ptr [rbp - 0x438], 0
	je	.label_1108
	xor	edx, edx
	lea	rdi, [rbp - 0x430]
	mov	rsi, qword ptr [rbp - 0x438]
	call	mbsnwidth
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  eax
.label_1108:
	jmp	.label_1106
.label_1106:
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_1107
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  0
.label_1107:
	jmp	.label_1105
.label_1105:
	mov	eax,  dword ptr [dword ptr [long_time_expected_width.width]]
	add	rsp, 0x440
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4c0

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4f0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_1118
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1119
.label_1118:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_1119:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1111
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1112
.label_1111:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_1112:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_1114:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1120
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1110
.label_1120:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1109
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1109
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1110
.label_1109:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1121
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1110
.label_1121:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1117
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1113
.label_1117:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1115
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1116
.label_1115:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1110
.label_1116:
	jmp	.label_1113
.label_1113:
	jmp	.label_1114
.label_1110:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40e6c0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1130:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1131
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1128
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1133
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1123
.label_1133:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1125
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1127
.label_1125:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1124
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1129
.label_1124:
	mov	byte ptr [rbp - 0x41], 1
.label_1129:
	jmp	.label_1127
.label_1127:
	jmp	.label_1132
.label_1132:
	jmp	.label_1128
.label_1128:
	jmp	.label_1122
.label_1122:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1130
.label_1131:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1126
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1123
.label_1126:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1123:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e810

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1134
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1135
.label_1134:
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8b0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1138:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1141
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1136
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1139
.label_1136:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1140
.label_1139:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1140:
	jmp	.label_1137
.label_1137:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1138
.label_1141:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea00

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1143
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1142
.label_1143:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1142:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea90
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1146:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1144
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1148
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1147
.label_1148:
	jmp	.label_1145
.label_1145:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1146
.label_1144:
	mov	qword ptr [rbp - 8], 0
.label_1147:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb30

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1149
	jmp	.label_1152
.label_1152:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1149
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1151
	jmp	.label_1149
.label_1149:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1153
.label_1151:
	mov	byte ptr [rbp - 1], 0
.label_1153:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eba0

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1154
	jmp	.label_1157
.label_1157:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1155
	jmp	.label_1154
.label_1154:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1156
.label_1155:
	mov	byte ptr [rbp - 1], 0
.label_1156:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebf0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1158
	jmp	.label_1159
.label_1159:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1160
.label_1158:
	mov	byte ptr [rbp - 1], 0
.label_1160:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec20
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1161
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1161:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec50
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_1162
	jmp	.label_1164
.label_1164:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1165
	jmp	.label_1162
.label_1162:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1163
.label_1165:
	mov	byte ptr [rbp - 1], 0
.label_1163:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eca0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1166
	jmp	.label_1168
.label_1168:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1167
.label_1166:
	mov	byte ptr [rbp - 1], 0
.label_1167:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ece0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1169
	jmp	.label_1171
.label_1171:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1170
.label_1169:
	mov	byte ptr [rbp - 1], 0
.label_1170:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed20
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1172
	jmp	.label_1174
.label_1174:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1173
.label_1172:
	mov	byte ptr [rbp - 1], 0
.label_1173:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed60
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1175
	jmp	.label_1177
.label_1177:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1176
.label_1175:
	mov	byte ptr [rbp - 1], 0
.label_1176:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eda0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1178
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1178
	jmp	.label_1182
.label_1182:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1178
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1183
	jmp	.label_1178
.label_1178:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1179
.label_1183:
	mov	byte ptr [rbp - 1], 0
.label_1179:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee20
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1184
	jmp	.label_1187
.label_1187:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1186
	jmp	.label_1184
.label_1184:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1185
.label_1186:
	mov	byte ptr [rbp - 1], 0
.label_1185:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1188
	jmp	.label_1190
.label_1190:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1189
.label_1188:
	mov	byte ptr [rbp - 1], 0
.label_1189:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eeb0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1191
	jmp	.label_1194
.label_1194:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1191
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1193
	jmp	.label_1191
.label_1191:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1195
.label_1193:
	mov	byte ptr [rbp - 1], 0
.label_1195:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef20

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1196
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1197
.label_1196:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1197:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef60
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1199
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1200
.label_1199:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1200:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efa0

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	je	.label_1202
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1206
.label_1202:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1208
.label_1206:
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x31], cl
	mov	rdx, qword ptr [rbp - 0x30]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x32], cl
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rdx, 0
	je	.label_1205
	movzx	eax, byte ptr [rbp - 0x31]
	cmp	eax, 0
	jne	.label_1203
.label_1205:
	jmp	.label_1207
.label_1203:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	cmp	eax, ecx
	je	.label_1204
.label_1207:
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1208:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f080

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffffffc
	mov	dword ptr [rbp - 0x60], esi
	mov	esi, dword ptr [rbp - 0x60]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	and	esi, ecx
	cmp	esi, 0
	je	.label_1246
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1246:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1268
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1268:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1220
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1220:
	mov	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1232
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1241
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1241:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rax, rdi
	cmp	rax, 0x1000
	jge	.label_1249
	mov	eax, 0x1000
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1260
.label_1249:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
.label_1260:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_1276
.label_1232:
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1217
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_1217:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_1276:
	jmp	.label_1238
.label_1238:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_1221
	jmp	.label_1247
.label_1247:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1251
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1247
.label_1251:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_1279:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x139], cl
	je	.label_1259
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x139], dl
.label_1259:
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	jne	.label_1280
	jmp	.label_1275
.label_1280:
	jmp	.label_1277
.label_1277:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1279
.label_1275:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	jne	.label_1213
	jmp	.label_1221
.label_1213:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_1223
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1223
	jmp	.label_1231
.label_1223:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_1237
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1237
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_1237
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1209
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1256:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	jbe	.label_1278
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x13a], dl
.label_1278:
	mov	al, byte ptr [rbp - 0x13a]
	test	al, 1
	jne	.label_1269
	jmp	.label_1273
.label_1269:
	jmp	.label_1274
.label_1274:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1256
.label_1273:
	jmp	.label_1209
.label_1209:
	jmp	.label_1210
.label_1237:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_1214
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_1214:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_1227
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	cmp	rax, 0x1000
	jle	.label_1263
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_1250
.label_1263:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_1250:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_1227:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_1219
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1219
	mov	dword ptr [rbp - 0xf0], 0
	jmp	.label_1215
.label_1219:
	test	byte ptr [rbp - 0x61], 1
	je	.label_1240
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1245
.label_1240:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_1245:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_1253
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1257
	jmp	.label_1226
.label_1257:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_1248
	movabs	rsi, OFFSET FLAT:.str_4
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	jne	.label_1271
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_1254
.label_1271:
	jmp	.label_1226
.label_1254:
	jmp	.label_1236
.label_1248:
	mov	dword ptr [rbp - 0xf0], 0
.label_1253:
	jmp	.label_1215
.label_1215:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1218
	lea	rdi, [rbp - 0x58]
	lea	rdx, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x10]
	call	seen_triple
	test	al, 1
	jne	.label_1230
	jmp	.label_1258
.label_1230:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1262
	jmp	.label_1236
.label_1262:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_1226
.label_1258:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x120], rax
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_1244
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1229
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1229
	jmp	.label_1236
.label_1229:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_1226
.label_1244:
	mov	rdi, qword ptr [rbp - 0x120]
	call	strlen
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1266
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, 0x1000
	jbe	.label_1239
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1211
.label_1239:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1211
.label_1211:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1234
.label_1266:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x50]
	jbe	.label_1235
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_1235:
	jmp	.label_1234
.label_1234:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x160], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_1270
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1228
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_1228:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1224
.label_1270:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1242
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1265:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x161], cl
	jbe	.label_1255
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x161], dl
.label_1255:
	mov	al, byte ptr [rbp - 0x161]
	test	al, 1
	jne	.label_1261
	jmp	.label_1264
.label_1261:
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1265
.label_1264:
	jmp	.label_1242
.label_1242:
	jmp	.label_1224
.label_1224:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	jmp	.label_1222
.label_1218:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1216
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_1216
	mov	dword ptr [rbp - 0x5c], 0x14
	jmp	.label_1226
.label_1216:
	jmp	.label_1222
.label_1222:
	jmp	.label_1210
.label_1210:
	jmp	.label_1231
.label_1231:
	jmp	.label_1233
.label_1233:
	jmp	.label_1236
.label_1236:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1238
.label_1221:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1225
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	jne	.label_1225
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1225:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1252
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1252:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1267
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_1267:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1212
.label_1226:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1272
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_1272:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x168], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x168]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1212:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa50

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	jne	.label_1283
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	movabs	r8, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_1282
	call	xalloc_die
.label_1282:
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_1285
	jmp	.label_1281
.label_1285:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1284
.label_1281:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	record_file
	mov	byte ptr [rbp - 1], 0
.label_1284:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1289
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1290
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1289
.label_1290:
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1286
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1288
.label_1286:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1288:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1289:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1287
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1287:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc50

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1291
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1296
.label_1291:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1296:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1293:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1292
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1294
	jmp	.label_1292
.label_1294:
	jmp	.label_1295
.label_1295:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1293
.label_1292:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd00

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1297
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1297
.label_1297:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1299
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1298
.label_1299:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1300
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1300:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1298:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fdd0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1306:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1307
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1306
.label_1307:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1304:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1302
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1308
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1301
.label_1308:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1305
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_1305:
	jmp	.label_1301
.label_1301:
	jmp	.label_1303
.label_1303:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1304
.label_1302:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe70

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_1312:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1309
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1309:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1310
	jmp	.label_1313
.label_1310:
	jmp	.label_1311
.label_1311:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1312
.label_1313:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff00

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff10

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1314
	jmp	.label_1316
.label_1314:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1315
	call	xalloc_die
.label_1315:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1316
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_1316:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ffc0

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1317
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1318
.label_1317:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
.label_2934:
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1318:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410040

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_1322
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1321
.label_1322:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1321:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1324
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1323
.label_1324:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1323:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1320
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1319
.label_1320:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1319:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410240

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1325
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1327
.label_1325:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1328
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1327
.label_1328:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1326
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1327
.label_1326:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1332
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1327
.label_1332:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1331
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1327
.label_1331:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1330
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1327
.label_1330:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1329
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1327
.label_1329:
	mov	byte ptr [rbp - 1], 0x3f
.label_1327:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410320

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_1333
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1334
.label_1333:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1335
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1338
.label_1335:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1336
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1337
.label_1336:
	jmp	.label_1337
.label_1337:
	jmp	.label_1338
.label_1338:
	jmp	.label_1334
.label_1334:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4103c0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mfile_name_concat
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1339
	call	xalloc_die
.label_1339:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410410

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1344
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1341
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1341
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1341:
	jmp	.label_1343
.label_1344:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1346
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1346:
	jmp	.label_1343
.label_1343:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1340
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1342
.label_1340:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	cl, byte ptr [rbp - 0x41]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1345
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1345:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1342:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410590

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1354
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1352
.label_1354:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1359
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1352
.label_1359:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1362
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1352
.label_1362:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1350
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1352
.label_1350:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_1357
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1352
.label_1357:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_1364
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1352
.label_1364:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1349
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1352
.label_1349:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1353
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1353
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1352
.label_1353:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1360
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1360
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1352
.label_1360:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1347
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1347
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1347:
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1361
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1365
.label_1361:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1365:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1348
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1363
.label_1348:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1363:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1355
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1351
.label_1355:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1351
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_1351
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_1351:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1356
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1358
.label_1356:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1358:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_1352:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410870

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1369:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1368
	test	byte ptr [rbp - 0x11], 1
	je	.label_1374
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1373
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1373
	mov	qword ptr [rbp - 0x10], 0
.label_1373:
	jmp	.label_1370
.label_1374:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_1366
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1372
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1372:
	jmp	.label_1371
.label_1366:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_1367
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1367
	mov	qword ptr [rbp - 0x10], 0
.label_1367:
	jmp	.label_1371
.label_1371:
	jmp	.label_1370
.label_1370:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1369
.label_1368:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410980

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
.label_1388:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1384
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1384:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_1392
	jmp	.label_1397
.label_1392:
	mov	dword ptr [rbp - 0x3c], 0
.label_1395:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1389
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1389
	jmp	.label_1377
.label_1389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1379
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_1379:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_1377:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_1390
	jmp	.label_1393
.label_1390:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1396
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1399
.label_1396:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1399:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1405
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1380
.label_1405:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1380:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1386
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1378
.label_1386:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1395
.label_1393:
	jmp	.label_1376
.label_1376:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1404
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1376
.label_1404:
	jmp	.label_1381
.label_1381:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1383
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1381
.label_1383:
	jmp	.label_1391
.label_1391:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1398
	jmp	.label_1402
.label_1398:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1402:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1375
	jmp	.label_1394
.label_1375:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1387
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_1387:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1391
.label_1394:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1401
	jmp	.label_1403
.label_1401:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1378
.label_1403:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1400
	jmp	.label_1382
.label_1400:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1378
.label_1382:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1385
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1378
.label_1385:
	jmp	.label_1388
.label_1397:
	mov	dword ptr [rbp - 4], 0
.label_1378:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c60

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	jne	.label_1409
	jmp	.label_1411
.label_1409:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1407
.label_1411:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_1410
	jmp	.label_1406
.label_1410:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1407
.label_1406:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_1408
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1407
.label_1408:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1407:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410cf0

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d20
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1412
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1414
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1413
.label_1414:
	mov	byte ptr [rbp - 5], 0
.label_1413:
	jmp	.label_1412
.label_1412:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410dd0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410df0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e10

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e30

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1415
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1419
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1417:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1420
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1417
.label_1420:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1416
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1416:
	jmp	.label_1419
.label_1419:
	jmp	.label_1421
.label_1421:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1418
.label_1415:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ee0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1429:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1425
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1426:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1428
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1426
.label_1428:
	jmp	.label_1425
.label_1425:
	jmp	.label_1427
.label_1427:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1429
.label_1422:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1423
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1423
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1424
.label_1423:
	mov	byte ptr [rbp - 1], 0
.label_1424:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410fd0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str_8
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_3
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1430]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1431]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1432]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110f0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1436
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1438
.label_1436:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1435:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1439
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1434
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1434
	jmp	.label_1437
.label_1434:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1438
.label_1437:
	jmp	.label_1433
.label_1433:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1435
.label_1439:
	mov	qword ptr [rbp - 8], 0
.label_1438:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4111b0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1440
	call	abort
.label_1440:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411220
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1441
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1442
.label_1441:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1443:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1444
	call	abort
.label_1444:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1446
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1442
.label_1446:
	jmp	.label_1445
.label_1445:
	jmp	.label_1447
.label_1447:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1443
.label_1442:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112b0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1452:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1451
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1451
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1453
.label_1451:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1452
	jmp	.label_1448
.label_1448:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1450
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1449
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1453
.label_1449:
	jmp	.label_1448
.label_1450:
	mov	qword ptr [rbp - 8], 0
.label_1453:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411380
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1457:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1460
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1454
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1459:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1458
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1461
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1455
.label_1461:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1459
.label_1458:
	jmp	.label_1454
.label_1454:
	jmp	.label_1456
.label_1456:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1457
.label_1460:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1455:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411450
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1469:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1464
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1463
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1465:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1468
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1462
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1467
.label_1462:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1465
.label_1468:
	jmp	.label_1463
.label_1463:
	jmp	.label_1466
.label_1466:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1469
.label_1464:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1467:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411520
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1471:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1470
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1471
.label_1470:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411580
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1472]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1473]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115b0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1476
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1476:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1480
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1480:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1475
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1478
.label_1475:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1481
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1481:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1477
	jmp	.label_1474
.label_1477:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1482
	jmp	.label_1474
.label_1482:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1479
	jmp	.label_1474
.label_1479:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1478
.label_1474:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1478:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411750

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411790

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4117b0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1487
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1486
.label_1487:
	movss	xmm0,  dword ptr [dword ptr [label_1483]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1484
	movss	xmm0,  dword ptr [dword ptr [label_1485]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1484
	movss	xmm0,  dword ptr [dword ptr [label_1485]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1484
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1484
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1484
	movss	xmm0,  dword ptr [dword ptr [label_1485]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1484
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1484
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1486
.label_1484:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1486:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118e0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1488
	movss	xmm0,  dword ptr [dword ptr [label_1493]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1494
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1494:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1491
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1490
.label_1491:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1489]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1488:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1492
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1490
.label_1492:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1490:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a00
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1498:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1499
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1497
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1501:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1495
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1500
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1500:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1501
.label_1495:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1502
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1502:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1497:
	jmp	.label_1496
.label_1496:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1498
.label_1499:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b20

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1504
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1504
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1515:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1503
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1510
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1507:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1516
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1507
.label_1516:
	jmp	.label_1510
.label_1510:
	jmp	.label_1512
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1515
.label_1503:
	jmp	.label_1504
.label_1504:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1511:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1505
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1506:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1514
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1506
.label_1514:
	jmp	.label_1509
.label_1509:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1511
.label_1505:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1513:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1508
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1513
.label_1508:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ca0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1517
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1521
.label_1517:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1522
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1521
.label_1522:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1519
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1521
.label_1519:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1518
	jmp	.label_1520
.label_1518:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1521
.label_1520:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1523
	jmp	.label_1524
.label_1523:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1525
.label_1524:
	call	abort
.label_1525:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1521:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411eb0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1535:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1530
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1534
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1529:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1538
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1532
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1539
.label_1532:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1539:
	jmp	.label_1527
.label_1527:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1529
.label_1538:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1531
	jmp	.label_1533
.label_1531:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1528
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1536
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1537
.label_1536:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1526
.label_1528:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1526:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1534:
	jmp	.label_1533
.label_1533:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1535
.label_1530:
	mov	byte ptr [rbp - 1], 1
.label_1537:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412090

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1546
	call	abort
.label_1546:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1557
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1547
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1547:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1549
.label_1557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1556
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1556:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1542
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1542:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1550
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1543
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1543:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1551
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1551:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1545
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1540
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1553
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1553:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1554
.label_1540:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1548
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1548:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1554:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [label_1493]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1558
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1549
.label_1558:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1489]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1544
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1549
.label_1544:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1555
	call	abort
.label_1555:
	jmp	.label_1545
.label_1545:
	jmp	.label_1550
.label_1550:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1552
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1541
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1549
.label_1541:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1549
.label_1552:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1549:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412530

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1565
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1567
.label_1565:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1560
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1560
	jmp	.label_1568
.label_1560:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1566
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1562
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1561
.label_1562:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1561:
	jmp	.label_1566
.label_1566:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1567
.label_1568:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1564:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1569
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1559
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1559
	jmp	.label_1570
.label_1559:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1571
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1571:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1567
.label_1570:
	jmp	.label_1563
.label_1563:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1564
.label_1569:
	mov	qword ptr [rbp - 8], 0
.label_1567:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412700

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1572
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1573
.label_1572:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1573:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412760

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1574
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1577
.label_1574:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1576
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1575
.label_1576:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1575:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1577:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127d0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1592
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1589
.label_1592:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1583
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1590
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1590:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1588
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1588:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1586
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1581
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1581:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1591
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1591:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1585
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1580
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1587
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1587:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1593
.label_1580:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1584
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1584:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1593:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1489]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1579
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1578:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1582
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1578
.label_1582:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1579:
	jmp	.label_1585
.label_1585:
	jmp	.label_1586
.label_1586:
	jmp	.label_1583
.label_1583:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1589:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412bd0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1594
	mov	qword ptr [rbp - 8], 0xa
.label_1594:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1596:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1598
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1598:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1595
	jmp	.label_1597
.label_1595:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1596
.label_1597:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c50

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1600:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1602
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1602:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1601
	jmp	.label_1599
.label_1601:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1600
.label_1599:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d10

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d50

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412da0
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412dd0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1603
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1603
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1603:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e60

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1604
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1604
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1604:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f00

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f30

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:.str
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_1646
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_1646
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_1646:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_1613
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_1613:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1648
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_1608
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1636
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_1645
.label_1636:
	jmp	.label_1608
.label_1608:
	jmp	.label_1650
.label_1648:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1630
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_1630
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_1606
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1638
.label_1606:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_1638:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_1645
.label_1630:
	jmp	.label_1650
.label_1650:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1652]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1652]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1652]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_1653
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.2_2
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_1607
.label_1653:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_1627:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_1605
	jmp	.label_1623
.label_1623:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_1605:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_1627
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_1
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.3_1
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_1654
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_1617
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1617
.label_1654:
	movabs	rax, OFFSET FLAT:.str.2_2
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_1625]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_1617:
	jmp	.label_1607
.label_1607:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1618
.label_1645:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1633
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_1628
	jmp	.label_1635
.label_1635:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_1637
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_1610
.label_1637:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1cc], eax
.label_1610:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1cd], cl
	ja	.label_1622
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1cd], cl
.label_1622:
	mov	al, byte ptr [rbp - 0x1cd]
	test	al, 1
	jne	.label_1635
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1631
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1642
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_1643
	jmp	.label_1634
.label_1642:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1634
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_1634
.label_1643:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_1651
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_1651:
	jmp	.label_1634
.label_1634:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1611
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1620
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1611
.label_1620:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_1611:
	jmp	.label_1631
.label_1631:
	jmp	.label_1628
.label_1628:
	jmp	.label_1633
.label_1633:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1639
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_1640
	jmp	.label_1626
.label_1639:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1626
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_1626
.label_1640:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1609
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_1609
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_1609
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1614
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_1614:
	mov	qword ptr [rbp - 0x38], 1
.label_1609:
	jmp	.label_1626
.label_1626:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_1641:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_1641
	jmp	.label_1618
.label_1618:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_1655
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_1655:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_1612
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_1616
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_1632:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1621
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_1624
	jmp	.label_1621
.label_1624:
	jmp	.label_1629
.label_1629:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_1632
.label_1621:
	jmp	.label_1616
.label_1616:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_1644
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_1644
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_1644:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1647
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_1649
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1649
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_1656
.label_1649:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1d4], ecx
.label_1656:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_1647:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1615
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_1619
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1619
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_1619:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_1615:
	jmp	.label_1612
.label_1612:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413aa0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_1657
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_1658]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1657
	jmp	.label_1659
.label_1659:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_1489]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_1660
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1652]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_1660:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1652]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_1657:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413bc0

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1661:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_1664
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_1665
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1666
.label_1665:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_1666:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1664:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1663
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_1663:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1662
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_1662:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_1661
	.section	.text
	.align	32
	#Procedure 0x413d10

	.globl human_options
	.type human_options, @function
human_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_1667
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_1667:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d70

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1670
	movabs	rdi, OFFSET FLAT:.str.4
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1670
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1670
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1674
.label_1670:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_1676
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_1676:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_1680
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_1679
.label_1680:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1682
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1672
.label_1682:
	jmp	.label_1675
.label_1675:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_1677
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_1677:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_1673
	jmp	.label_1668
.label_1673:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1669
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_1681
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_1681:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_1683
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_1678
.label_1683:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_1678:
	jmp	.label_1668
.label_1669:
	jmp	.label_1671
.label_1671:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1675
.label_1668:
	jmp	.label_1679
.label_1679:
	jmp	.label_1674
.label_1674:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_1672:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413f80

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413fb0

	.globl getuser
	.type getuser, @function
getuser:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1691:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1685
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1690
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1685
.label_1690:
	jmp	.label_1689
.label_1689:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1691
.label_1685:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1687
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1692
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1688
.label_1692:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1688
.label_1688:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [user_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_1687:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1686
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1684
.label_1686:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1684
.label_1684:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140f0
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1699:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1696
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1697
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1697
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1695
.label_1697:
	jmp	.label_1698
.label_1698:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1699
.label_1696:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1701:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1702
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1693
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1693
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1695
.label_1693:
	jmp	.label_1694
.label_1694:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1701
.label_1702:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getpwnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1700
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1695
.label_1700:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nouser_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1695:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414290

	.globl getgroup
	.type getgroup, @function
getgroup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1710:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1704
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1709
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1704
.label_1709:
	jmp	.label_1708
.label_1708:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1710
.label_1704:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1706
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1711
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1707
.label_1711:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1707
.label_1707:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [group_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_1706:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1705
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1703
.label_1705:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1703
.label_1703:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143d0
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1720:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1717
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1715
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1715
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1712
.label_1715:
	jmp	.label_1719
.label_1719:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1720
.label_1717:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1718:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1714
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1713
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1713
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1712
.label_1713:
	jmp	.label_1716
.label_1716:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1718
.label_1714:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getgrnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1721
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1712
.label_1721:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nogroup_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1712:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414570

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_1722
	jmp	.label_1725
.label_1725:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1725
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1724
.label_1722:
	jmp	.label_1723
.label_1723:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1723
	jmp	.label_1724
.label_1724:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414670

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1726
	jmp	.label_1729
.label_1729:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1729
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1728
.label_1726:
	jmp	.label_1727
.label_1727:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1727
	jmp	.label_1728
.label_1728:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414770

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_1739
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1739
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_1737
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1741
	jmp	.label_1732
.label_1741:
	jmp	.label_1735
.label_1737:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1750
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1754
	jmp	.label_1732
.label_1754:
	jmp	.label_1735
.label_1750:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_1736
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_1736:
	jmp	.label_1739
.label_1739:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_1751
	test	byte ptr [rbp - 0x69], 1
	jne	.label_1753
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1751
.label_1753:
	test	byte ptr [rbp - 0x69], 1
	je	.label_1730
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1730:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1744
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1746
	jmp	.label_1732
.label_1746:
	jmp	.label_1735
.label_1744:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_1751:
	jmp	.label_1732
.label_1732:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1734
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_1734:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_1745
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_1745:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_1749
	jmp	.label_1755
.label_1755:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1756
	jmp	.label_1731
.label_1731:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1733
	jmp	.label_1747
.label_1749:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1743
.label_1756:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1743
.label_1733:
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_1743:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_1740
	mov	qword ptr [rbp - 0x80], 0
.label_1740:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_1738
	mov	qword ptr [rbp - 0x88], 0
.label_1738:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1748
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_1752
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1742
.label_1752:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1742:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_1748:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_1735:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414bd0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_1759:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_1758
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_1757
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_1757:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1759
.label_1758:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414c40

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_1763:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_1762
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1761
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_1761:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_1760
	jmp	.label_1762
.label_1760:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1763
.label_1762:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ce0

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1766:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_1764
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_1764:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1765
	jmp	.label_1767
.label_1765:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_1766
.label_1767:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d60
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_1771:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1769
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1768
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1769
.label_1768:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1770
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1769
.label_1770:
	jmp	.label_1771
.label_1769:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e50

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e90

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1783
	jmp	.label_1784
.label_1784:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1792
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1795
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1802]]
	jmp	rcx
.label_2961:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1775
.label_1795:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1777:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_1793
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1801
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1787
.label_1801:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1778
.label_1793:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1781
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1787
.label_1786:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1778
.label_1781:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1782
	mov	qword ptr [rbp - 0x50], 1
.label_1782:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1799
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1772
	jmp	.label_1779
.label_1772:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1780
.label_1799:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1785
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1789
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1790
	jmp	.label_1779
.label_1790:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1789:
	jmp	.label_1796
.label_1785:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1778
.label_1796:
	jmp	.label_1780
.label_1780:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1777
.label_1787:
	jmp	.label_1775
.label_1775:
	jmp	.label_1784
.label_1792:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1778
.label_1783:
	jmp	.label_1776
.label_1776:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1788
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_1798
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1773
	jmp	.label_1779
.label_1773:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1774
.label_1798:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1797
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1791
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1794
	jmp	.label_1779
.label_1794:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1791:
	jmp	.label_1800
.label_1797:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1778
.label_1800:
	jmp	.label_1774
.label_1774:
	jmp	.label_1776
.label_1788:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1778
.label_1779:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1778:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4151c0

	.globl mpsort
	.type mpsort, @function
mpsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 3
	add	rdx, rax
	mov	rcx, qword ptr [rbp - 0x18]
	call	mpsort_with_tmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415200

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x10], 2
	ja	.label_1803
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_1814
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	cmp	eax, 0
	jle	.label_1809
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_1809:
	jmp	.label_1814
.label_1814:
	jmp	.label_1812
.label_1803:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	mpsort_with_tmp
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_1810
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1808
.label_1810:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_into_tmp
.label_1808:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1813:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x70]
	call	rax
	cmp	eax, 0
	jg	.label_1805
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1807
	jmp	.label_1804
.label_1807:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1806
.label_1805:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jne	.label_1811
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1804
.label_1811:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
.label_1806:
	jmp	.label_1813
.label_1804:
	jmp	.label_1812
.label_1812:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415430

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x68]
	call	mpsort_with_tmp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_with_tmp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x60], rcx
.label_1818:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	rax
	cmp	eax, 0
	jg	.label_1816
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1819
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1815
.label_1819:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1820
.label_1816:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_1817
	jmp	.label_1815
.label_1817:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
.label_1820:
	jmp	.label_1818
.label_1815:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4155d0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415660

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2152
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_2152:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_2183
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2187
.label_2183:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_2190
	mov	dword ptr [rbp - 0x68], 0xc
.label_2190:
	jmp	.label_2187
.label_2187:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_1920:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2197
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_2201
	jmp	.label_2216
.label_2216:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2218
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_2224
.label_2218:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_2224:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_2136
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_2237
.label_2136:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_2237:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2243
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2243:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1835
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1838
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_1838
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1845
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1853
.label_1845:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1860
.label_1853:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1860:
	jmp	.label_1838
.label_1838:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1835:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1873
.label_2201:
	jmp	.label_1875
.label_1875:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_1876
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_1893
	jmp	.label_1899
.label_1899:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_1893
	jmp	.label_1904
.label_1904:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_1893
	jmp	.label_1910
.label_1910:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_1911
	jmp	.label_1918
.label_1918:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_1919
	jmp	.label_1893
.label_1893:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_1875
.label_1911:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_1875
.label_1876:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_1875
.label_1919:
	jmp	.label_1932
.label_1932:
	jmp	.label_1933
.label_1933:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1936
	mov	dword ptr [rbp - 0x4c], 0
.label_1952:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_2054
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_1941
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1941
.label_2054:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_1946
.label_1941:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_1946:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1952
	jmp	.label_1936
.label_1936:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1844
	jmp	.label_1965
.label_1965:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1906
	jmp	.label_1844
.label_1844:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_2236
.label_1906:
	mov	dword ptr [rbp - 0x90], 0
.label_2236:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_1983
	jmp	.label_1988
.label_1988:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x798], eax
	je	.label_1990
	jmp	.label_1996
.label_1996:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_1997
	jmp	.label_2001
.label_2001:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x7a0], eax
	je	.label_2002
	jmp	.label_2005
.label_2005:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_2007
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_2013
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_2127
	jmp	.label_2156
.label_2156:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_2010
	jmp	.label_2029
.label_2029:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_2075
	jmp	.label_2034
.label_2034:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_1916
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	je	.label_2037
	jmp	.label_2040
.label_2040:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_2041
	jmp	.label_2043
.label_2043:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_1913
	jmp	.label_2048
.label_2048:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	je	.label_2050
	jmp	.label_2055
.label_2055:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_2056
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	je	.label_2061
	jmp	.label_2063
.label_2063:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_2065
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_2069
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	je	.label_2075
	jmp	.label_2078
.label_2078:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_2080
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x7e4], eax
	je	.label_2157
	jmp	.label_2086
.label_2086:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_2087
	jmp	.label_2093
.label_2093:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	je	.label_2095
	jmp	.label_2098
.label_2098:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	je	.label_2099
	jmp	.label_2101
.label_2101:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x7f4], eax
	je	.label_2103
	jmp	.label_2109
.label_2109:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_2111
	jmp	.label_2115
.label_2115:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_2117
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x800], eax
	je	.label_2120
	jmp	.label_2122
.label_2122:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x804], eax
	je	.label_2075
	jmp	.label_2027
.label_2027:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_2103
	jmp	.label_2133
.label_2133:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	je	.label_2135
	jmp	.label_2141
.label_2141:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x810], eax
	je	.label_2142
	jmp	.label_2147
.label_2147:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	je	.label_2148
	jmp	.label_1944
.label_1944:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_2154
	jmp	.label_2159
.label_2159:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_2160
	jmp	.label_2164
.label_2164:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x820], eax
	je	.label_2165
	jmp	.label_2169
.label_2169:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_2170
	jmp	.label_2172
.label_2172:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x828], eax
	je	.label_2173
	jmp	.label_2178
.label_2178:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_2180
	jmp	.label_2186
.label_2186:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	je	.label_2188
	jmp	.label_2193
.label_2193:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x834], eax
	je	.label_2195
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x838], eax
	je	.label_2200
	jmp	.label_1836
.label_1836:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_2168
	jmp	.label_2049
.label_2049:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	je	.label_1977
	jmp	.label_2215
.label_2215:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x844], eax
	je	.label_2217
	jmp	.label_2223
.label_1990:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2226
	jmp	.label_1821
.label_2226:
	jmp	.label_2241
.label_2241:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2143
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	jmp	.label_2235
.label_2143:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_2235:
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_2240
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_1822
.label_2240:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x850], rax
.label_1822:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1834
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1834:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1846
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1849
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_1849
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1858
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1864
.label_1858:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1868
.label_1864:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1868:
	jmp	.label_1849
.label_1849:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1846:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_2099:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1891
	jmp	.label_1821
.label_1891:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1896
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1896:
	jmp	.label_1824
.label_2002:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1902
	jmp	.label_1821
.label_1902:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1908
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1908:
	jmp	.label_1824
.label_2103:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1915
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1915:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1921
	jmp	.label_1821
.label_1921:
	jmp	.label_1824
.label_2007:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1925
	jmp	.label_1821
.label_1925:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1928
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1928:
	jmp	.label_1824
.label_2111:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2031
	jmp	.label_1821
.label_2031:
	jmp	.label_1824
.label_1832:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_2085:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2166
	xor	eax, eax
	mov	dword ptr [rbp - 0x854], eax
	jmp	.label_1960
.label_2166:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_1960:
	mov	eax, dword ptr [rbp - 0x854]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_1962
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_1968
.label_1962:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x860], rax
.label_1968:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1974
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1974:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1987
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1991
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_1991
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2021
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2053
.label_2021:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2012
.label_2053:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2012:
	jmp	.label_1991
.label_1991:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x861]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_1987:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_1824:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1954
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_1954:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_1979
	jmp	.label_2196
.label_2196:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2091
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_2096
.label_2091:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_2096:
	mov	eax, dword ptr [rbp - 0x874]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_2100
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	jmp	.label_2107
.label_2100:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_2107:
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1938
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1938:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2123
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2126
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_2126
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2132
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2140
.label_2132:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2149
.label_2140:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2149:
	jmp	.label_2126
.label_2126:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2163
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1957
.label_2163:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2171
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_2182
.label_2171:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_2182:
	jmp	.label_1957
.label_1957:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2123:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1979
.label_1979:
	jmp	.label_1869
.label_2013:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2203
	jmp	.label_1824
.label_2203:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	jge	.label_2208
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_2208:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1826
.label_2168:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2230
	jmp	.label_1821
.label_2230:
	jmp	.label_1824
.label_2127:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1827
	jmp	.label_1821
.label_1827:
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1832
.label_2117:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1889
	jmp	.label_1821
.label_1889:
	jmp	.label_1842
.label_1842:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1843
.label_2120:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1851
	jmp	.label_1821
.label_1851:
	jmp	.label_1855
.label_1855:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1857
.label_2139:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_1861
.label_1826:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1865
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_1865:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_1867
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x897], al
	jb	.label_2077
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_2077:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_1867:
	mov	al, byte ptr [rbp - 0x896]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_1882
.label_1857:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1886
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_1886:
	jmp	.label_1843
.label_1843:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_1880:
	mov	byte ptr [rbp - 0x9e], 0
.label_1882:
	mov	dword ptr [rbp - 0xa4], 0
.label_1861:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1907
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_1907
	jmp	.label_1824
.label_1907:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1914
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1914:
	jmp	.label_1923
.label_1923:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_1924
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1924:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x89c], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x89c]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_1934
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_1934:
	mov	al, byte ptr [rbp - 0x89d]
	test	al, 1
	jne	.label_1923
	jmp	.label_1956
.label_1956:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_1959
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_1959:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1961
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	jmp	.label_1963
.label_1961:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x8a4], eax
.label_1963:
	mov	eax, dword ptr [rbp - 0x8a4]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_1971
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1976
	jmp	.label_1980
.label_1980:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1982
	xor	eax, eax
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_1985
.label_1982:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8a8], eax
.label_1985:
	mov	eax, dword ptr [rbp - 0x8a8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_1993
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	jmp	.label_2000
.label_1993:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x8b0], rax
.label_2000:
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2006
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2006:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2017
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2020
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_2020
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2026
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2033
.label_2026:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2038
.label_2033:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2038:
	jmp	.label_2020
.label_2020:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_2017:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1976
.label_1976:
	jmp	.label_1829
.label_1971:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_2058
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_2072
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2076
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2076:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2081
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_2081:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_2092
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_2097
.label_2092:
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_2097
.label_2097:
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_2104
	jmp	.label_2110
.label_2110:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2113
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b8], eax
	jmp	.label_2116
.label_2113:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_2116:
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_2118
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	jmp	.label_2124
.label_2118:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_2124:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2130
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2130:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2144
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2146
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_2146
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2155
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2161
.label_2155:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2167
.label_2161:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2167:
	jmp	.label_2146
.label_2146:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_2144:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2104
.label_2104:
	jmp	.label_2192
.label_2072:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2194
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2194:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1866
	jmp	.label_2023
.label_2023:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2207
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_2211
.label_2207:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_2211:
	mov	eax, dword ptr [rbp - 0x8c4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_2025
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x8d0], rax
	jmp	.label_2227
.label_2025:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_2227:
	mov	rax, qword ptr [rbp - 0x8d0]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2233
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2233:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2242
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1841
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1841
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1833
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1905
.label_1833:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1848
.label_1905:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1848:
	jmp	.label_1841
.label_1841:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_2242:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1866
.label_1866:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1870
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1870:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_2192:
	jmp	.label_1881
.label_2058:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1883
	jmp	.label_1885
.label_1885:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1888
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_1890
.label_1888:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_1890:
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_1900
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	jmp	.label_1909
.label_1900:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x8e0], rax
.label_1909:
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1917
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1917:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1926
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_1930
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1937
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1940
.label_1937:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1945
.label_1940:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1945:
	jmp	.label_1930
.label_1930:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1926:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1883
.label_1883:
	jmp	.label_1881
.label_1881:
	jmp	.label_1829
.label_1829:
	jmp	.label_1964
.label_1964:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1966
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	jmp	.label_1973
.label_1966:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_1973:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_1978
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_1986
.label_1978:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x8f0], rax
.label_1986:
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1995
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1995:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2004
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2008
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_2008
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2015
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2022
.label_2015:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2030
.label_2022:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2030:
	jmp	.label_2008
.label_2008:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2039
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1999
.label_2039:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2045
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_1955
.label_2045:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1955:
	jmp	.label_1999
.label_1999:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2004:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_2010:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2066
	jmp	.label_1821
.label_2066:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_2070
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2070
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_2074
.label_2070:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_2079
	mov	dword ptr [rbp - 0xfc], 0
.label_2079:
	jmp	.label_2074
.label_2074:
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2085
.label_1916:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2090
	jmp	.label_1821
.label_2090:
	jmp	.label_2094
.label_2094:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1843
.label_2037:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1852
	jmp	.label_1821
.label_1852:
	jmp	.label_1871
.label_1871:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1843
.label_2142:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2112
	jmp	.label_1821
.label_2112:
	jmp	.label_2114
.label_2114:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1857
.label_2148:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1895
	jmp	.label_1821
.label_1895:
	jmp	.label_2121
.label_2121:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1857
.label_2135:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2129
	jmp	.label_1821
.label_2129:
	jmp	.label_2131
.label_2131:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1880
.label_2041:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2145
	jmp	.label_1821
.label_2145:
	jmp	.label_2150
.label_2150:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1843
.label_2154:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2158
	jmp	.label_1821
.label_2158:
	jmp	.label_2162
.label_2162:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1880
.label_1913:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2138
	jmp	.label_1821
.label_2138:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_2174
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_1901
.label_2174:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_2189:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_2184
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_2189
.label_2184:
	jmp	.label_1901
.label_1901:
	jmp	.label_2202
.label_2202:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1843
.label_2160:
	jmp	.label_2210
.label_2210:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2212
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_2214
.label_2212:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x908], eax
.label_2214:
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_2221
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x910], rax
	jmp	.label_2231
.label_2221:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x910], rax
.label_2231:
	mov	rax, qword ptr [rbp - 0x910]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2238
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2238:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1825
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1830
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_1830
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1839
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2106
.label_1839:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1854
.label_2106:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1854:
	jmp	.label_1830
.label_1830:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1825:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_2050:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2165:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2108
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_2108:
	jmp	.label_1824
.label_2170:
	jmp	.label_1878
.label_1878:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_1880
.label_2056:
	movabs	rax, OFFSET FLAT:.str.3_2
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1832
.label_2173:
	jmp	.label_1824
.label_2061:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1828
	jmp	.label_1821
.label_1828:
	jmp	.label_1903
.label_1903:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1843
.label_2180:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_1947:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1931
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_1942
.label_1931:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_1942:
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_1947
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_1956
.label_2157:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2209
	jmp	.label_1821
.label_2209:
	jmp	.label_1824
.label_2065:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1832
.label_2188:
	jmp	.label_1850
.label_1850:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1967
	xor	eax, eax
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_1972
.label_1967:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x920], eax
.label_1972:
	mov	eax, dword ptr [rbp - 0x920]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_1975
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_1950
.label_1975:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_1950:
	mov	rax, qword ptr [rbp - 0x928]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1994
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1994:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2047
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2009
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_2009
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2014
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2019
.label_2014:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2177
.label_2019:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2177:
	jmp	.label_2009
.label_2009:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2047:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_2195:
	jmp	.label_2042
.label_2042:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x92c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_1843
.label_2069:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1970
	jmp	.label_1821
.label_1970:
	jmp	.label_2059
.label_2059:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x930], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1843
.label_2075:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2071
	jmp	.label_1821
.label_2071:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_2084
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_2088
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	byte ptr [rbp - 0x93b], sil
	jne	.label_2102
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_2102:
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_2088:
	mov	al, byte ptr [rbp - 0x939]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_2044
.label_2084:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x944]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x948], esi
	mov	byte ptr [rbp - 0x949], cl
	jne	.label_2134
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	jne	.label_2128
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x950], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x950]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x94b], sil
.label_2128:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_2134:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_2176
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_2176:
	jmp	.label_2044
.label_2044:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	je	.label_2191
	jmp	.label_2198
.label_2198:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x95c], eax
	jne	.label_2199
	jmp	.label_2204
.label_2204:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x960]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_2206
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_2225
.label_2206:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_2229
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x968], eax
	jmp	.label_2234
.label_2229:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x968], eax
.label_2234:
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_2225:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2191:
	jmp	.label_1823
.label_1823:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2199:
	jmp	.label_1935
.label_1935:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1843
.label_2080:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1859
	jmp	.label_1821
.label_1859:
	jmp	.label_1863
.label_1863:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x970]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1843
.label_2200:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1874
	jmp	.label_1821
.label_1874:
	jmp	.label_1877
.label_1877:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1843
.label_2087:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1887
	jmp	.label_1824
.label_1887:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1894
	jmp	.label_1821
.label_1894:
	jmp	.label_1897
.label_1897:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1826
.label_1977:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1912
	jmp	.label_1824
.label_1912:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x978]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_1922
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1949
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_1929
.label_1949:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x97c], eax
.label_1929:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_1922:
	jmp	.label_1939
.label_1939:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2095:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1943
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1943:
	jmp	.label_1948
.label_1948:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1951
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	jmp	.label_1953
.label_1951:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_1953:
	mov	eax, dword ptr [rbp - 0x980]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_1958
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	jmp	.label_2244
.label_1958:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_2244:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1969
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_1969:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1981
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_1984
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1992
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1998
.label_1992:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2003
.label_1998:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2003:
	jmp	.label_1984
.label_1984:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2018
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_2024
.label_2018:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2028
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_2035
.label_2028:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_2035:
	jmp	.label_2024
.label_2024:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1981:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_1997:
	mov	qword ptr [rbp - 0xf0], 1
.label_2052:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_2046
	jmp	.label_2051
.label_2051:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_2052
.label_2046:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_2057
	jmp	.label_1821
.label_2057:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2062
.label_2217:
	mov	qword ptr [rbp - 0xf0], 0
.label_2062:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_2068
	jmp	.label_1869
.label_2068:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	jl	.label_2082
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x99a], cl
	jne	.label_2125
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x99a], dl
.label_2125:
	mov	al, byte ptr [rbp - 0x99a]
	mov	byte ptr [rbp - 0x999], al
.label_2082:
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_2089
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2137]]
	jmp	rcx
.label_2939:
	jmp	.label_2105
.label_2105:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2139
.label_2940:
	jmp	.label_2151
.label_2151:
	jmp	.label_2153
.label_2153:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2139
.label_2941:
	jmp	.label_2179
.label_2179:
	jmp	.label_2222
.label_2222:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2139
.label_2942:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_2175
	jmp	.label_2179
.label_2175:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_2181
	jmp	.label_2151
.label_2181:
	jmp	.label_2185
.label_2185:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2139
.label_2089:
	jmp	.label_1821
.label_1983:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_2223:
	jmp	.label_1821
.label_1821:
	mov	dword ptr [rbp - 0x734], 1
.label_2064:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_2205
	jmp	.label_2213
.label_2213:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_2064
.label_2205:
	jmp	.label_2219
.label_2219:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2220
	xor	eax, eax
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_2228
.label_2220:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_2228:
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_2232
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_2239
.label_2232:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x9c0], rax
.label_2239:
	mov	rax, qword ptr [rbp - 0x9c0]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2032
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1831
.label_2032:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1837
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1840
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_1840
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1847
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1856
.label_1847:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1862
.label_1856:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1862:
	jmp	.label_1840
.label_1840:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1872
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_1879
.label_1872:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1884
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x9d0], rax
	jmp	.label_1898
.label_1884:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_1898:
	jmp	.label_1879
.label_1879:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1837:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1869
.label_1869:
	jmp	.label_1873
.label_1873:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1920
.label_2197:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1927
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1927
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_1927:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1831:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x9d8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a10

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2246:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_2245
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2246
.label_2245:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a70

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_2247
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2248
.label_2247:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ad0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418b10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2252
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_2252:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2253
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2250
.label_2253:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2250:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_2249
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_2249
	movabs	rsi, OFFSET FLAT:.str.2_4
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_2251
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_2251:
	jmp	.label_2249
.label_2249:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418c30

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_2254
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2255
.label_2254:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2255
.label_2255:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418cb0

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2256
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2257
.label_2256:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2257
.label_2257:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418cf0

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_2258
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2259
.label_2258:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2259
.label_2259:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418d40

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_2260
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2261
.label_2260:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2261
.label_2261:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418df0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2262
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2262:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2263
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2263:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2265
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2264
.label_2265:
	call	abort
.label_2264:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ea0

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2266
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2267
.label_2266:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2267
.label_2267:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f70

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_2372:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_2268
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2316]]
	jmp	rcx
.label_2958:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2957:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2284
	jmp	.label_2286
.label_2286:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2287
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2287:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2284
.label_2284:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2298
.label_2959:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2298
.label_2960:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_2306
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_2306:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2320
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_2341:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2324
	jmp	.label_2329
.label_2329:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2331
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2331:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2336
.label_2336:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2341
.label_2324:
	jmp	.label_2320
.label_2320:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2298
.label_2955:
	mov	byte ptr [rbp - 0x79], 1
.label_2954:
	mov	byte ptr [rbp - 0x7b], 1
.label_2956:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2354
	mov	byte ptr [rbp - 0x79], 1
.label_2354:
	jmp	.label_2275
.label_2275:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2357
	jmp	.label_2360
.label_2360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2362
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2362:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2357
.label_2357:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2298
.label_2953:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2298
.label_2268:
	call	abort
.label_2298:
	mov	qword ptr [rbp - 0x58], 0
.label_2339:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2450
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_2381
.label_2450:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_2381:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2393
	jmp	.label_2374
.label_2393:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_2400
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2400
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2400
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_2408
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_2408
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2418
.label_2408:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_2418:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_2400
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2400
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2427
	jmp	.label_2269
.label_2427:
	mov	byte ptr [rbp - 0x81], 1
.label_2400:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_2432
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2436]]
	jmp	rcx
.label_2965:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2438
	jmp	.label_2442
.label_2442:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2312
	jmp	.label_2269
.label_2312:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2335
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2335
	jmp	.label_2449
.label_2449:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2451:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2454
.label_2454:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2422:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2443
.label_2443:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2468
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2468:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2335:
	jmp	.label_2277
.label_2277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2361
.label_2361:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2289
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2289
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_2289
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_2289
	jmp	.label_2304
.label_2304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2461
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2461:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2299
.label_2299:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2289
.label_2289:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_2330
.label_2438:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_2386
	jmp	.label_2337
.label_2386:
	jmp	.label_2330
.label_2330:
	jmp	.label_2274
.label_2976:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_2338
	jmp	.label_2344
.label_2344:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_2346
	jmp	.label_2349
.label_2338:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2350
	jmp	.label_2269
.label_2350:
	jmp	.label_2353
.label_2346:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_2355
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2355
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_2355
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_2347
	jmp	.label_2369
.label_2369:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_2347
	jmp	.label_2376
.label_2376:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_2347
	jmp	.label_2382
.label_2382:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_2347
	jmp	.label_2387
.label_2387:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_2388
	jmp	.label_2347
.label_2347:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2395
	jmp	.label_2269
.label_2395:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2399
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2407
.label_2407:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2410
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2414
.label_2414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2296
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2296:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2421
.label_2421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2464
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2464:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2426
.label_2388:
	jmp	.label_2426
.label_2426:
	jmp	.label_2355
.label_2355:
	jmp	.label_2353
.label_2349:
	jmp	.label_2353
.label_2353:
	jmp	.label_2274
.label_2966:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_2433
.label_2967:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_2433
.label_2971:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_2433
.label_2969:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_2435
.label_2972:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_2435
.label_2968:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_2435
.label_2970:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_2433
.label_2977:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2440
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2445
	jmp	.label_2269
.label_2445:
	jmp	.label_2293
.label_2440:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2447
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2447
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2447
	jmp	.label_2293
.label_2447:
	jmp	.label_2435
.label_2435:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2453
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2453
	jmp	.label_2269
.label_2453:
	jmp	.label_2433
.label_2433:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2459
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_2444
.label_2459:
	jmp	.label_2274
.label_2978:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2466
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2272
	jmp	.label_2271
.label_2466:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_2272
.label_2271:
	jmp	.label_2274
.label_2272:
	jmp	.label_2276
.label_2276:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_2278
	jmp	.label_2274
.label_2278:
	jmp	.label_2281
.label_2281:
	mov	byte ptr [rbp - 0x83], 1
.label_2973:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2285
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2285
	jmp	.label_2269
.label_2285:
	jmp	.label_2274
.label_2975:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2291
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2297
	jmp	.label_2269
.label_2297:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2301
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_2301
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_2301:
	jmp	.label_2308
.label_2308:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2314
.label_2314:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2319
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2319:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2327
.label_2327:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2334
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2334:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2291:
	jmp	.label_2274
.label_2974:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_2274
.label_2432:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_2345
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_2294
.label_2345:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2365
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_2365:
	jmp	.label_2370
.label_2370:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2384
	jmp	.label_2390
.label_2384:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_2391
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_2390
.label_2391:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_2397
	mov	byte ptr [rbp - 0x91], 0
.label_2415:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_2401
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_2401:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_2412
	jmp	.label_2413
.label_2412:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2415
.label_2413:
	jmp	.label_2390
.label_2397:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2420
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2420
	mov	qword ptr [rbp - 0xb8], 1
.label_2448:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_2425
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_2317
	jmp	.label_2434
.label_2434:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_2317
	jmp	.label_2462
.label_2462:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_2317
	jmp	.label_2439
.label_2439:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_2441
	jmp	.label_2317
.label_2317:
	jmp	.label_2269
.label_2441:
	jmp	.label_2348
.label_2348:
	jmp	.label_2326
.label_2326:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_2448
.label_2425:
	jmp	.label_2420
.label_2420:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_2455
	mov	byte ptr [rbp - 0x91], 0
.label_2455:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2458
.label_2458:
	jmp	.label_2463
.label_2463:
	jmp	.label_2465
.label_2465:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2370
.label_2390:
	jmp	.label_2294
.label_2294:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_2273
	test	byte ptr [rbp - 0x79], 1
	je	.label_2283
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2283
.label_2273:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_2423:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2292
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2292
	jmp	.label_2429
.label_2429:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2300
	jmp	.label_2269
.label_2300:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2303
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2303
	jmp	.label_2307
.label_2307:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2309
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2309:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2313
.label_2313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2318
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2318:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2325
.label_2325:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2332:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2303:
	jmp	.label_2340
.label_2340:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2342
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2456
.label_2456:
	jmp	.label_2351
.label_2351:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2352
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2352:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2358
.label_2358:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2363
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_2367
.label_2292:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2373
	jmp	.label_2377
.label_2377:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2379
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2379:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_2373:
	jmp	.label_2367
.label_2367:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_2389
	jmp	.label_2394
.label_2389:
	jmp	.label_2396
.label_2396:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2398
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2398
	jmp	.label_2402
.label_2402:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2403:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2406
.label_2406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2398:
	jmp	.label_2416
.label_2416:
	jmp	.label_2417
.label_2417:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2419
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_2423
.label_2394:
	jmp	.label_2293
.label_2283:
	jmp	.label_2274
.label_2274:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2428
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2431
.label_2428:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2424
.label_2431:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2424
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_2437
.label_2424:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_2437
	jmp	.label_2293
.label_2437:
	jmp	.label_2444
.label_2444:
	jmp	.label_2375
.label_2375:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2446
	jmp	.label_2269
.label_2446:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2371
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2371
	jmp	.label_2452
.label_2452:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2392
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2392:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2457
.label_2457:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2460
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2460:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2467
.label_2467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2270:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2371:
	jmp	.label_2280
.label_2280:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2282
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2282:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2288
.label_2288:
	jmp	.label_2293
.label_2293:
	jmp	.label_2405
.label_2405:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2295
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2295
	jmp	.label_2430
.label_2430:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2302
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2302:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2305
.label_2305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2311:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2295:
	jmp	.label_2321
.label_2321:
	jmp	.label_2322
.label_2322:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2323
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2323:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_2333
	mov	byte ptr [rbp - 0x7e], 0
.label_2333:
	jmp	.label_2337
.label_2337:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2339
.label_2374:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_2343
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2343
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2343
	jmp	.label_2269
.label_2343:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2290
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2290
	test	byte ptr [rbp - 0x7d], 1
	je	.label_2290
	test	byte ptr [rbp - 0x7e], 1
	je	.label_2356
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2366
.label_2356:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2368
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2368
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_2372
.label_2368:
	jmp	.label_2378
.label_2378:
	jmp	.label_2290
.label_2290:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2380
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2380
	jmp	.label_2383
.label_2383:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2385
	jmp	.label_2328
.label_2328:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2359
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2364
.label_2364:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2383
.label_2385:
	jmp	.label_2380
.label_2380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2404
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_2404:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2366
.label_2269:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2411
	test	byte ptr [rbp - 0x79], 1
	je	.label_2411
	mov	dword ptr [rbp - 0x34], 4
.label_2411:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_2366:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a310
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a350

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2469
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2470
.label_2469:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2470
.label_2470:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2471
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2471:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a4b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_2475:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_2474
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2475
.label_2474:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_2476
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_2473]],  rax
.label_2476:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_2472
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_2472:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a590

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a5d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_2482
	call	abort
.label_2482:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2479
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_2481
	call	xalloc_die
.label_2481:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2478
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_2480
.label_2478:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_2480:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_2484
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_2473]]
	mov	qword ptr [rax + 8], rcx
.label_2484:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_2479:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_2483
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_2477
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2477:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_2483:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a850

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a890
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8e0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a920

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_2485
	call	abort
.label_2485:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a990

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9d0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa00
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa30

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aab0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aae0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab30

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41abe0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ac20

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aca0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41acd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad50
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad80

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41adb0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41add0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2487
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2489
.label_2487:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2486
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2489
.label_2486:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2488
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2489
.label_2488:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2489:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aed0

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41af10

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_2492
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_2492:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_2491
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2493
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_2493:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2490
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_2490:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_2494
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_2494:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_2491:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b0e0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b110

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b120
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b150
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b180
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1b0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1e0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b210
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b240
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b270
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2a0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2d0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b300
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b330
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b360
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3a0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3d0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b400
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b420
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b440
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b460
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b470

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b490

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b4b0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b4d0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b500
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b510
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b540

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2495
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2496
.label_2495:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2499
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2496
.label_2499:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2497
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2497
	jmp	.label_2497
.label_2497:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2498
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2498
	jmp	.label_2498
.label_2498:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2496:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5f0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2500
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2502
.label_2500:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_2501
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2501:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_2502:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b640
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_2503]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b670

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2507
	movabs	rsi, OFFSET FLAT:.str_10
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2504
.label_2507:
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_2504:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_5
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:.str.3_3
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_2508
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2506]]
	jmp	rcx
.label_2866:
	jmp	.label_2505
.label_2867:
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_2505
.label_2868:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2505
.label_2869:
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2505
.label_2870:
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2505
.label_2871:
	movabs	rdi, OFFSET FLAT:.str.8_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_2505
.label_2872:
	movabs	rdi, OFFSET FLAT:.str.9_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2505
.label_2873:
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_2505
.label_2874:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_2505
.label_2875:
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2505
.label_2508:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_2505:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bc30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2511:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2509
	jmp	.label_2510
.label_2510:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2511
.label_2509:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bca0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2515:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_2512
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_2518
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2516
.label_2518:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2516:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_2512:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2517
	jmp	.label_2513
.label_2517:
	jmp	.label_2514
.label_2514:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2515
.label_2513:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bdb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_2519
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2519:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bf20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bfb0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2520
	call	xalloc_die
.label_2520:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2521
	cmp	qword ptr [rbp - 8], 0
	je	.label_2521
	call	xalloc_die
.label_2521:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c040

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2522
	call	xalloc_die
.label_2522:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c090

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2523
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2523
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2525
.label_2523:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2524
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2524
	call	xalloc_die
.label_2524:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2525:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c110

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2526
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2529
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2529:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2527
	call	xalloc_die
.label_2527:
	jmp	.label_2528
.label_2526:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2530
	call	xalloc_die
.label_2530:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2528:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c200

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c220

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c250
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c290
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_2531
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_2532
.label_2531:
	call	xalloc_die
.label_2532:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c2f0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c330

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c370

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_7
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41c3b0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_2544
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_2533
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_2536
.label_2533:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_2540
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2546
.label_2540:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_2546:
	jmp	.label_2536
.label_2536:
	jmp	.label_2535
.label_2544:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_2538
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2534
.label_2538:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_2543
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2543:
	jmp	.label_2534
.label_2534:
	jmp	.label_2535
.label_2535:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_2537
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2539
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2541
.label_2539:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2541
.label_2541:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2545
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2542
.label_2545:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_2542:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2537:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c530
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c580

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2547
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_2547
	call	xalloc_die
.label_2547:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c5d0

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0x22
.label_2548:
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + rax], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gethostname
	cmp	eax, 0
	jne	.label_2553
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_2554
	jmp	.label_2550
.label_2554:
	jmp	.label_2551
.label_2553:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2549
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_2549
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2549
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_2549
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2552
.label_2549:
	jmp	.label_2551
.label_2551:
	jmp	.label_2548
.label_2550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2552:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c6e0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2561
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2561
	jmp	.label_2566
.label_2561:
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_2566:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2575
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2578
.label_2575:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2578
.label_2578:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2609:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2603
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2609
.label_2603:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2613
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2581
.label_2613:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2616
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2562
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2562
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2562
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2577
.label_2562:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2581
.label_2577:
	jmp	.label_2586
.label_2616:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2588
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2596
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2581
.label_2596:
	mov	dword ptr [rbp - 0x4c], 1
.label_2588:
	jmp	.label_2586
.label_2586:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2610
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2581
.label_2610:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2611
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2619
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2581
.label_2619:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2565
	jmp	.label_2571
.label_2571:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2565
	jmp	.label_2576
.label_2576:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2565
	jmp	.label_2584
.label_2584:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2565
	jmp	.label_2592
.label_2592:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2565
	jmp	.label_2579
.label_2579:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2565
	jmp	.label_2604
.label_2604:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2565
	jmp	.label_2595
.label_2595:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2565
	jmp	.label_2556
.label_2556:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2565
	jmp	.label_2601
.label_2601:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2565
	jmp	.label_2555
.label_2555:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2557
	jmp	.label_2565
.label_2565:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2570
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2572
	jmp	.label_2615
.label_2615:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2572
	jmp	.label_2590
.label_2590:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2593
	jmp	.label_2600
.label_2600:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2602
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2602:
	jmp	.label_2593
.label_2572:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2593:
	jmp	.label_2570
.label_2570:
	jmp	.label_2557
.label_2557:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_2612
	jmp	.label_2617
.label_2617:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2620
	jmp	.label_2558
.label_2558:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2560
	jmp	.label_2567
.label_2567:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2563
	jmp	.label_2573
.label_2573:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2569
	jmp	.label_2580
.label_2580:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2583
	jmp	.label_2589
.label_2589:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2564
	jmp	.label_2599
.label_2599:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2587
	jmp	.label_2605
.label_2605:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2607
	jmp	.label_2597
.label_2597:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2594
	jmp	.label_2614
.label_2614:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2598
	jmp	.label_2608
.label_2608:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2560
	jmp	.label_2559
.label_2559:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2563
	jmp	.label_2618
.label_2618:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2569
	jmp	.label_2574
.label_2574:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2564
	jmp	.label_2582
.label_2582:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2585
	jmp	.label_2591
.label_2594:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2612:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2598:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2568
.label_2620:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2560:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2563:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2569:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2583:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2564:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2585:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2587:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2607:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2568
.label_2591:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2581
.label_2568:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2606
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2606:
	jmp	.label_2611
.label_2611:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2581:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ce10

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2621
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2622
.label_2621:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2622:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ce70

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2624:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2623
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2624
.label_2623:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cec0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41cf10

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_12
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_2630
	jmp	.label_2629
.label_2629:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2626
	jmp	.label_2627
.label_2627:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_2628
	jmp	.label_2632
.label_2632:
	call	abort
.label_2628:
	movabs	rax, OFFSET FLAT:.str.1_9
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2625
.label_2626:
	movabs	rax, OFFSET FLAT:.str.2_6
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2625
.label_2630:
	movabs	rax, OFFSET FLAT:.str.3_4
	mov	qword ptr [rbp - 0x38], rax
.label_2625:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_2631
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2633
.label_2631:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2633:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d040

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2652
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2652
	jmp	.label_2664
.label_2652:
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2664:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2676
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2665
.label_2676:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2665
.label_2665:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2642:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2634
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2642
.label_2634:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2648
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2638
.label_2648:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2658
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2662
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2662
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2662
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2678
.label_2662:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2638
.label_2678:
	jmp	.label_2684
.label_2658:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2688
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2693
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2638
.label_2693:
	mov	dword ptr [rbp - 0x4c], 1
.label_2688:
	jmp	.label_2684
.label_2684:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2685
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2638
.label_2685:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2644
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2655
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2638
.label_2655:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2650
	jmp	.label_2670
.label_2670:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2650
	jmp	.label_2677
.label_2677:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2650
	jmp	.label_2682
.label_2682:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2650
	jmp	.label_2692
.label_2692:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2650
	jmp	.label_2697
.label_2697:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2650
	jmp	.label_2636
.label_2636:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2650
	jmp	.label_2643
.label_2643:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2650
	jmp	.label_2668
.label_2668:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2650
	jmp	.label_2687
.label_2687:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2650
	jmp	.label_2659
.label_2659:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2646
	jmp	.label_2650
.label_2650:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2645
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2672
	jmp	.label_2674
.label_2674:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2672
	jmp	.label_2690
.label_2690:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2640
	jmp	.label_2671
.label_2671:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2698
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2698:
	jmp	.label_2640
.label_2672:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2640:
	jmp	.label_2645
.label_2645:
	jmp	.label_2646
.label_2646:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_2647
	jmp	.label_2654
.label_2654:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2656
	jmp	.label_2660
.label_2660:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2657
	jmp	.label_2666
.label_2666:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2663
	jmp	.label_2673
.label_2673:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2669
	jmp	.label_2679
.label_2679:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2681
	jmp	.label_2689
.label_2689:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2639
	jmp	.label_2696
.label_2696:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2695
	jmp	.label_2637
.label_2637:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2653
	jmp	.label_2683
.label_2683:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2694
	jmp	.label_2649
.label_2649:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2641
	jmp	.label_2699
.label_2699:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2657
	jmp	.label_2661
.label_2661:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2663
	jmp	.label_2675
.label_2675:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2669
	jmp	.label_2686
.label_2686:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2639
	jmp	.label_2680
.label_2680:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2667
	jmp	.label_2691
.label_2694:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2647:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2641:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2635
.label_2656:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2657:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2663:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2669:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2681:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2639:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2667:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2695:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2653:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2635
.label_2691:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2638
.label_2635:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2651
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2651:
	jmp	.label_2644
.label_2644:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2638:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d770

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2700
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2701
.label_2700:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2701:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d7d0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2703:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2702
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2703
.label_2702:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d820

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2704
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2704:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2705
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2705
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2705
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2706
.label_2705:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2706:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d8d0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2707
	jmp	.label_2709
.label_2709:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2708
.label_2707:
	jmp	.label_2708
.label_2708:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d920

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d980

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2710
	mov	qword ptr [rbp - 0x18], 0x10
.label_2710:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2712
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2712:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2711
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2711:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41daa0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41db10

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_2715
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_2715:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2716
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_2716:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_2713
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_2713
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2713:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2717
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2717:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_2714
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2714
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_2714:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd10

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2718
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2719
.label_2718:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_2719:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd70

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2720
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2721
.label_2720:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2721:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ddd0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2724:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2723
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2725
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2725:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2723:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2722
	jmp	.label_2726
.label_2722:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2724
.label_2726:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41de60

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2728:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2734
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2731
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2731:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2734:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2733
	jmp	.label_2727
.label_2733:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2728
.label_2727:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2729
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2730
.label_2729:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2732
	call	abort
.label_2732:
	jmp	.label_2730
.label_2730:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41df60

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_2736:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2735
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2736
.label_2735:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dfc0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_7
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	32
	#Procedure 0x41e010

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2741
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2737
.label_2741:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2737
.label_2737:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_2739
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2740
.label_2739:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2740:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2742
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_2738
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_2738:
	jmp	.label_2742
.label_2742:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e110

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e150

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_2743
	jmp	.label_2745
.label_2745:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2744
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2745
.label_2744:
	jmp	.label_2743
.label_2743:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e1b0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2750
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2751
.label_2750:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2746
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2749
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2749:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_2748
	jmp	.label_2747
.label_2748:
	test	byte ptr [rbp - 0x29], 1
	je	.label_2747
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2751
.label_2747:
	jmp	.label_2746
.label_2746:
	mov	qword ptr [rbp - 8], 0
.label_2751:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e280

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2756
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2755
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_2754
	jmp	.label_2755
.label_2756:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2755
.label_2754:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2752
.label_2755:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2753
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2752
.label_2753:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2757
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2752
.label_2757:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2752:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e370

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2768
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2762
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2762
.label_2768:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2759
.label_2762:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2766
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2758:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2770
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2761
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2765
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2761
.label_2765:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2763
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2759
.label_2763:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2764
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2769
.label_2764:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2767
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2759
.label_2767:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2769:
	jmp	.label_2770
.label_2761:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2760
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2760
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2760:
	jmp	.label_2758
.label_2770:
	jmp	.label_2766
.label_2766:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2759:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e570

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2771
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2773
.label_2771:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2772
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2772:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_2773:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e600

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2774
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2776
.label_2774:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2780
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2778
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_2777
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_2777
.label_2778:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_2777
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2777:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_2775
	jmp	.label_2779
.label_2775:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2776
.label_2779:
	jmp	.label_2780
.label_2780:
	mov	qword ptr [rbp - 8], -1
.label_2776:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e6f0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e790

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str_1
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e7b0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_2781
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2784
.label_2781:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2784
.label_2784:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_2783
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2782
.label_2783:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_2782:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e820

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2785
	movabs	rdi, OFFSET FLAT:.str_1
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2786
.label_2785:
	movabs	rdi, OFFSET FLAT:.str_1
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_2786:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e880

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_2787
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_2787
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2787:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e8e0
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e920
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e960
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e990
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e9c0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ea10

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ea60
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eaa0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eae0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eb20
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eb60

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_2788
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2792
.label_2788:
	jmp	.label_2789
.label_2789:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2791
	jmp	.label_2790
.label_2791:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2789
.label_2790:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2792:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ec20

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_2793
	test	byte ptr [rbp - 0x13], 1
	je	.label_2795
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2793
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2795
.label_2793:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2796
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2796:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2794
.label_2795:
	mov	dword ptr [rbp - 4], 0
.label_2794:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ecd0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2797
	call	xalloc_die
.label_2797:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ed10

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2799:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2798
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2799
.label_2798:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ed80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2800
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_2800:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2801
	movabs	rax, OFFSET FLAT:.str.1_10
	mov	qword ptr [rbp - 8], rax
.label_2801:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ede0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2802
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2805
.label_2802:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2803
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2804
.label_2803:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2804
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2804:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2806
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2806:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2805:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eeb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2807
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2808
.label_2807:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2809
.label_2808:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ef10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_2810
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2810:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ef50

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2811
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2811
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2811
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2812
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2813
.label_2812:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2813
.label_2811:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2813:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f0d0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41f0e0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41f0f0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41f100

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
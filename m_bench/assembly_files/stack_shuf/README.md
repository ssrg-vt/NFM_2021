changed from in the function counter:
        mov     qword ptr [rbp - 8], rdi
	mov     qword ptr [rbp - 0x10], rsi
	mov     qword ptr [rbp - 0x18], rdx
			
into:

	mov     qword ptr [rbp - 0x38], rdi
	mov     qword ptr [rbp - 0x28], rsi
	mov     qword ptr [rbp - 0x20], rdx
			 
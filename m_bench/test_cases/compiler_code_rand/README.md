in the function: getword, changed from this:

       		 cmp eax, 0x0
		 nop
		 je 0x4008c2
		     |
		     |
		     |
	    ---------------------
	    |			|
	    |			|
	    V			V
     lea rsi, [rsi]	 mov dword [rbp0x4 {var_c_1}], 0x0
     jmp 0x4008ca	 lea rdi, [rdi]
     	 		 jmp 0x400a23


to this:

       		 cmp eax, 0x0
		 nop
		 je 0x4008c2
		     |
		     |
		     |
	    ---------------------
	    |			|
	    |			|
	    V			V
     lea rsi, [rsi]	 mov dword [rbp0x4 {var_c_1}], 0x0
     jmp 0x400a23	 lea rdi, [rdi]
     	 		 jmp 0x4008ca
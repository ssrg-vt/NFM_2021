The change has been made from the function: "report":
mov	 qword ptr [rbp - 8], rdi   <----- modification target
mov	 qword ptr [rbp - 0x10], rsi
mov  	 qword ptr [rbp - 0x18], rdx

into

mov	 qword ptr [rbp - 0x38], rdi <----- this one was 0x18, but now 0x38
mov	 qword ptr [rbp - 0x28], rsi
mov   	 qword ptr [rbp - 0x20], rdx
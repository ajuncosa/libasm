			EXTERN ___error
			global	_ft_read
			section .text			; rdi = file descriptor, rsi = buffer string, rdx = bytes to read
_ft_read:							; 16
            mov		rax, 0x2000003
			syscall					; if there was an error, carry flag is set, rax = errno	; 24
			jc		error
			ret
error:	
            sub		rsp, 8			; substract 8 bytes from the stack pointer ; 16
            mov		r10, rax		; save errno
			call	___error		; this function returns the address to errno ; 24
			mov		[rax], r10		; now rax contains a pointer to errno, so I put errno into the place pointed to by rax
			mov		rax, -1
			add		rsp, 8			; add 8 bytes to the stack pointer ; 32
			ret

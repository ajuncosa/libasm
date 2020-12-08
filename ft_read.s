EXTERN	NUMBER (___error)
			global	_ft_read

			section .text			; rdi = file descriptor, rsi = buffer string, rdx = bytes to read
_ft_read:	mov		rax, 0x2000003
			syscall					; if there was an error, carry flag is set, rax = errno
			jc		error
			ret
error:		mov		rcx, rax		; save errno
			call	___error		; this function returns the address to errno
			mov		[rax], rcx		; now rax contains a pointer to errno, so I put errno into the place pointed to by rax
			mov		rax, -1
			ret

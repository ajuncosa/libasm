			global	_ft_strcpy

			section .text
_ft_strcpy:	mov		rax, rdi
copy:		cmp		byte[rsi], 0
			je		done
			mov		cl, byte[rsi]
			mov		byte[rdi], cl
			add		rsi, 1
			add		rdi, 1
			jmp		copy
done: 		mov		dil, 0
			ret	

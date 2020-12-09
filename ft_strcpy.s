			global	_ft_strcpy
			section .text
_ft_strcpy:
			mov		rax, rdi
copy:
			mov		cl, byte[rsi]
			mov		byte[rdi], cl
			cmp		byte[rsi], 0
			je		done
			add		rsi, 1
			add		rdi, 1
			jmp		copy
done:
			ret	

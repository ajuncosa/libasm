			EXTERN	_malloc
			EXTERN	_ft_strlen
			EXTERN	_ft_strcpy
			global	_ft_strdup
			section	.text
_ft_strdup:
			push	rdi
			call	_ft_strlen
			inc		rax
			mov		rdi, rax
			call	_malloc
			cmp		rax, 0
			jz		error
			mov		rdi, rax
			pop		rsi
			call	_ft_strcpy
			ret
error:
			mov		rax, 0
			ret

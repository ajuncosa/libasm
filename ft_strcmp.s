			global	_ft_strcmp
			section	.text
_ft_strcmp:
			cmp		byte[rsi], 0
			sete	dl
			cmp		byte[rdi], 0
			sete	dh
			and		dl, dh
			jnz		equal
			movzx	cx, byte[rsi]
			movzx	bx, byte[rdi]	; zero-extended to 16-bit, otherwise cmp will sign-extend the byte and unsigned char with value 255 will become negative
			cmp		bx, cx			; cmp must compare WORD size values
			jl		less
			jg		more
			add		rsi, 1
			add		rdi, 1
			jmp		_ft_strcmp
less:
			mov		rax, -1
			ret
more:
			mov		rax, 1
			ret
equal:
			mov		rax, 0
			ret
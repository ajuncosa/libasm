			global	_ft_strlen

			section	.text
_ft_strlen:	mov		rax, 0
			jmp		count
count:		cmp		byte[rdi], 0
			jz		done
			add		rdi, 1
			add		rax, 1
			jmp		count
done:		ret

            global	_ft_write

            section .text           ; rdi = file descriptor, rsi = string, rdx = bytes to write
_ft_write:  mov     rax, 0x2000004
            syscall
            cmp     rax, -1
            jz      error
            ret
error:      
            ret
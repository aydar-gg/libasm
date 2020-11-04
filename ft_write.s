sectoin .text
	global _ft_write

ft_write:
	movr rax, 0x2000004
	syscall
	jc error
	ret

error:
	mov rax, -1
	ret

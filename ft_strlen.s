segment .text
	global _ft_strlen
_ft_strlen:
	xor rax, rax
	jmp count_len

count_len:
	cmp byte[rdi + rax], 0x0
	je exit
	inc rax
	jmp count_len

exit:
	ret

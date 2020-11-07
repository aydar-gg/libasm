segment .text
	global _ft_strcpy
	extern _ft_strlen
_ft_strcpy:
	mov rax, rdi
	xor r8, r8
	jmp count_cpy
count_cpy:
	mov r8b, byte[rsi]
	mov byte[rdi], r8b
	test r8b, r8b
	jz exit
	inc rsi
	inc rdi
	jmp count_cpy

exit:
	ret

segment .text
	global _ft_strcpy
_ft_strcpy:
	mov rax, 0
	jmp count_cpy
count_cpy:
	mov ah, byte[rsi + rax]
	mov byte[rdi + rax], ah
	cmp ah, 0
	je exit
	inc rax
	jmp count_cpy

exit:
	mov rax, rdi
	ret

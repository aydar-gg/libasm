section .text
	global _ft_strcpy
ft_strcpy:
	mov rax, 0
	jmp count
count:
	mov ah, byte[rsi + rax]
	mov byte[rdi + rax], ah
	cmp ah, 0
	je exit
	inc rax
	jmp count

exit:
	mov rax, rdi
	ret

section .txt
	global _ft_strdup
	extern _malloc

ft_strdup:
	push rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	cmp eax, 0
	je error
	mov rsi, rdi
	mov rdi, rax
	call ft_strcpy
	pop rdi
	ret

error:
	mov rax, 0
	pop rdi
	ret

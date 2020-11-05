section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	cmp eax, 0
	je error
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	pop rdi
	ret

error:
	mov rax, 0
	pop rdi
	ret

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push rdi
	call _ft_strlen ;(rdi) ret rax
	mov rdi, rax
	inc rdi
	call _malloc ;ret rax
	cmp rax, 0
	je _return
	pop rsi
	mov rdi, rax
	call _ft_strcpy ;(rdi, rsi)
	ret

_return:
	ret

segment .text
	global _ft_strcmp
_ft_strcmp:
	mov rax, 0
	jmp count_cmp
count_cmp:
	mov al, byte[rdi]
	mov bl, byte[rsi]
	cmp bl, 0
	je m_l_e
	cmp al, 0
	je m_l_e
	cmp al, bl
	jne m_l_e
	inc rdi
	inc rsi
	jmp count_cmp

m_l_e:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	ret

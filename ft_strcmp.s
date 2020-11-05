segment .text
	global _ft_strcmp
_ft_strcmp:
	mov rcx, 0
	jmp count_cmp

count_cmp:
	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]
	cmp al, bl
	je equally
	cmp al, bl
	jl more_less
	;cmp al, bl
	;jg more
	inc rcx
	jmp count_cmp

equally:
	mov rax, 0
	jmp exit

more_less:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	jmp exit

exit:
	ret

NAME = libasm.a

FUNC =	ft_read.s \
		ft_strcmp.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_strcmp.s \
		ft_strlen.s \
		ft_write.s

OBJ = $(FUNC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -fmacho64 $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abroslav <abroslav@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/21 18:10:30 by abroslav          #+#    #+#              #
#    Updated: 2025/05/22 20:05:11 by abroslav         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRC		=	ft_printf.c ft_putchar_pf.c ft_putstr_pf.c ft_putnbr_pf.c \
			ft_putuint_pf.c ft_aux_pf.c ft_puthex_low_pf.c ft_puthex_upp_pf.c \
			ft_putptr_pf.c

OBJS	=	$(SRC:.c=.o)

CC		=	cc
CFLAGS	=	-Wall -Wextra -Werror
RM		=	rm -rf
AR		=	ar rcs

DEF_COLOR	=	\033[0;39m
RED			=	\033[0;90m
GREEN		=	\033[0;92m
YELLOW		=	\033[0;93m
BLUE		=	\033[0;94m
MAGENTA		=	\033[0;95m

$(NAME): $(OBJS)
		@echo "$(YELLOW)Compilando objetos...$(DEF_COLOR)"
		$(AR) $(NAME) $(OBJS)
		@echo "$(GREEN)Biblioteca $(NAME) compilada$(DEF_COLOR)"

%.o: %.c
	@echo "$(BLUE)Compilando: $<$(DEF_COLOR)"
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

clean:
	@echo "$(RED)Limpando objetos...$(DEF_COLOR)"
	$(RM) $(OBJS)
	@echo "$(MAGENTA)Objetos removidos!$(DEF_COLOR)"

fclean: clean
	@echo "$(YELLOW)Removendo $(NAME)...$(DEF_COLOR)"
	$(RM) $(NAME)
	@echo "$(GREEN) $(NAME)Removida!$(DEF_COLOR)"

re: fclean all
	@echo "$(RED)Projeto compilado!$(DEF_COLOR)"

.PHONY: all clean fclean re

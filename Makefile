# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmacias- <gmacias-@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/22 15:48:04 by gmacias-          #+#    #+#              #
#    Updated: 2022/02/23 19:26:13 by gmacias-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a
INCLUDE	= 	pintf.h

SRC		=	ft_printf.c			\
			ft_basics.c			\
			ft_hexadecimals.c	\
			ft_pointers.c		\

OBJ		=	${SRC:.c=.o}

CC		=	gcc
RM		=	rm -f
AR		=	ar rc
RN		=	ranlib

CFLAGS	=	-Wall -Wextra -Werror

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all: $(NAME)

$(NAME):	${OBJ} 
	@echo "Compiling .."
	${AR} ${NAME} ${OBJ}
	${RN} ${NAME}
	@echo "Done !"

clean:
	@echo "Remove .o  ..."
	${RM} ${OBJ}
	@echo "Done !"

fclean: clean
	@echo "Remove lib ..."
	${RM} $(NAME)
	@echo "Done !"

re: fclean all  

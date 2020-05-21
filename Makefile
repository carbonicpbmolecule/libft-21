# **************************************************************************** #
#																			  #
#														 :::	  ::::::::	#
#	Makefile										   :+:	  :+:	:+:	#
#													 +:+ +:+		 +:+	  #
#	By: jirwin <jirwin@student.42.fr>			  +#+  +:+	   +#+		 #
#												 +#+#+#+#+#+   +#+			#
#	Created: 2019/09/13 12:20:48 by jirwin			#+#	#+#			  #
#	Updated: 2019/09/19 11:28:14 by jirwin		   ###   ########.fr		#
#																			  #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

INC_DIR = inc
SRC_DIR = src
OBJ_DIR = obj

LIBFT_SRC=ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
	ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c \
	ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c \
	ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c \
	ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_isprint.c ft_tolower.c ft_toupper.c ft_memalloc.c \
	ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c \
	ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c \
	ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c \
	ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c \
	ft_putendl_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c \
	ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c \
	ft_range.c ft_swap.c ft_isspace.c ft_get_nb_size.c ft_count_words.c \
	ft_strrev.c ft_strnchr.c ft_power.c ft_power_l.c get_next_line.c

LIBFT_OBJS = $(LIBFT_SRC:%.c=$(OBJ_DIR)/%.o)

all: $(OBJ_DIR) $(NAME)

$(NAME): $(LIBFT_OBJS)
	ar rc $(NAME) $^
	ranlib $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/$(LIBFT_SRCS)%.c $(INC_DIR)/libft.h
	$(CC) $(CFLAGS) -c $< -I $(INC_DIR) -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

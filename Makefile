NAME = libft.a
CC = gcc

# FLAGS
CFLAGS = -Wall -Wextra -Werror
HFLAGS = -include $(HEADERS)

# PATHS NAME
HEADERS_PATH = includes/
SRCS_PATH = sources/
OBJS_PATH = objects/
CONVERSION_PATH = conversion/
LINKED_LIST_PATH = linked_list/
MEMORY_PATH = memory/
PRINT_PATH = print/
SORTING_PATH = sorting/
STRING_MANIPULATION_PATH = string_manipulation/
TYPE_PATH = type/
DIRECTORIE = null

# FILES NAME
HEADERS_FILES = libft.h
CONVERSION_FILES = ft_atoi ft_itoa ft_tolower ft_toupper 
LINKED_LIST_FILES = ft_lstadd ft_lstadd_at ft_lstdel ft_lstdelone \
					ft_lstdup ft_lstiter ft_lstmap ft_lstnew ft_print_list
MEMORY_FILES = ft_bzero ft_memalloc ft_memccpy ft_memchr ft_memcmp \
			   ft_memcpy ft_memdel ft_memmove ft_memset
PRINT_FILES = ft_putchar ft_putchar_fd ft_putendl ft_putendl_fd \
			  ft_putnbr ft_putnbr_fd ft_putstr ft_putstr_fd
SORTING_FILES = ft_sort_int_tab
STRING_MANIPULATION_FILES = ft_capitalize ft_strcat ft_strchr ft_strclr \
							ft_strcmp ft_strcpy ft_strdel ft_strdup ft_strequ ft_striter \
							ft_striteri ft_strjoin ft_strlcat ft_strlen ft_strmap ft_strmapi \
							ft_strncat ft_strncmp ft_strncpy ft_strnequ ft_strnew ft_strnstr \
							ft_strrchr ft_strsplit ft_strstr ft_strsub ft_strtrim
TYPE_FILES = ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint

HEADERS = $(addprefix $(HEADERS_PATH),$(HEADERS_FILES))

SRCS = $(addsuffix .c,$(addprefix $(SRCS_PATH)$(CONVERSION_PATH),$(CONVERSION_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(LINKED_LIST_PATH),$(LINKED_LIST_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(MEMORY_PATH),$(MEMORY_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(PRINT_PATH),$(PRINT_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(SORTING_PATH),$(SORTING_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(STRING_MANIPULATION_PATH),$(STRING_MANIPULATION_FILES))) \
	   $(addsuffix .c,$(addprefix $(SRCS_PATH)$(TYPE_PATH),$(TYPE_FILES)))

OBJS = $(addsuffix .o,$(addprefix $(OBJS_PATH)$(CONVERSION_PATH),$(CONVERSION_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(LINKED_LIST_PATH),$(LINKED_LIST_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(MEMORY_PATH),$(MEMORY_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(PRINT_PATH),$(PRINT_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(SORTING_PATH),$(SORTING_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(STRING_MANIPULATION_PATH),$(STRING_MANIPULATION_FILES))) \
	   $(addsuffix .o,$(addprefix $(OBJS_PATH)$(TYPE_PATH),$(TYPE_FILES)))


# OTHER VARIABLES
SOURCES_ARE_COMPILED = false
COMPILATION_HAS_STARTED = false

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJS)
	@echo 
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

## RIGHT VERSION
$(OBJS): $(SRCS)
	@if [ "$(COMPILATION_HAS_STARTED)" = "false" ]; then \
		echo "\n   \t\t          Libft"; \
		echo "0%   \t\t  Compilation Progress  \t\t   100%"; \
		mkdir -p $(OBJS_PATH) ; \
		find sources/* -maxdepth 1 -type d -exec basename {} \; | xargs -I % mkdir -p "./objects/"% ; \
		fi
	$(eval COMPILATION_HAS_STARTED = true)
ifeq ($(SOURCES_ARE_COMPILED),false)
	@printf "\033[1;30;42m \033[0m"
endif
	$(eval SRC = $(addsuffix $(notdir $(basename  $(@))).c,$(subst objects/,sources/,$(dir $@))))
	@$(CC) $(CFLAGS) $(HFLAGS) -o $@ -c $(SRC)

clean:
	/bin/rm -rf $(OBJS_PATH)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

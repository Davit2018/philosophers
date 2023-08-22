NAME = philo

CC = cc

FLAGS = -Wall -Werror -Wextra

SOURCES = ./*.c

OBJECTS = $(SOURCES:.c=.o)

%.o: %.c
	@$(CC) $(CCFLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): $(OBJECTS)
	@$(CC) $(FLAGS) $(SOURCES) -o $(NAME)
	@echo $(NAME) built!

clean:
	@rm -rf $(OBJECTS)

fclean: clean
	@rm -rf $(NAME)

re: fclean all
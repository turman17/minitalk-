NAME_SERVER = server
NAME_CLIENT = client

SRCS_CLIENT = client.c
SRCS_SERVER = server.c

OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}

CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

all: client server

client: ${OBJS_CLIENT}
		${CC} ${CFLAGS} ${OBJS_CLIENT} -o ${NAME_CLIENT}

server: ${OBJS_SERVER}
		${CC} ${CFLAGS} ${OBJS_SERVER} -o ${NAME_SERVER}

clean:
			${RM} ${OBJS_CLIENT} ${OBJS_SERVER} ${OBJS_CLIENTBONUS} ${OBJS_SERVERBONUS}

fclean: clean
			${RM} ${NAME_CLIENT} ${NAME_SERVER}

re: fclean all

.PHONY: all clean fclean

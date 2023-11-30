CC = gcc
CFLAGS = -g
RM = rm

default: all

all: Main

Main: 
	$(CC) $(CFLAGS) -o clox main.c chunk.c debug.c memory.c value.c
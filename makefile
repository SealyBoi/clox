CC = gcc
CFLAGS = -g
RM = rm
files = $(main) $(chunk) $(debug) $(memory) $(value)
main = src/main.c
chunk = src/chunk.c
debug = src/debug.c
memory = src/memory.c
value = src/value.c

default: all

all: Main

Main: 
	$(CC) $(CFLAGS) -o clox $(files)

run:
	./clox

clean:
	del clox.exe
	
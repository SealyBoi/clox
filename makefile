CC = gcc
CFLAGS = -g
RM = rm
files = $(main) $(chunk) $(debug) $(memory) $(value) $(vm)
main = src/main.c
chunk = src/chunk.c
debug = src/debug.c
memory = src/memory.c
value = src/value.c
vm = src/vm.c

default: all

all: Main

Main: 
	$(CC) $(CFLAGS) -o clox $(files)

run:
	./clox

clean:
	del clox.exe
	
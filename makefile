CC = gcc
CFLAGS = -g
RM = rm
files = $(main) $(chunk) $(debug) $(memory) $(value) $(vm) $(scanner) $(compiler) $(object) $(table)
main = src/main.c
chunk = src/chunk.c
debug = src/debug.c
memory = src/memory.c
value = src/value.c
vm = src/vm.c
scanner = src/scanner.c
compiler = src/compiler.c
object = src/object.c
table = src/table.c

default: all

all: Main

Main: 
	$(CC) $(CFLAGS) -o clox $(files)

run:
	./clox

clean:
	del clox.exe
	
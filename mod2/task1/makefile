CC = clang 
CFLAGS = -Wall -Wextra

program: main.c
	$(CC) $(CFLAGS) -o program main.c

run: program
	./program $(LOGIN)

.PHONY: clean
clean:
	rm -f program


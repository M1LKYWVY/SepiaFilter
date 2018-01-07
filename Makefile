all: sepia_asm.o main.o sepia.o io.o
	gcc -Wall main.o sepia_asm.o sepia.o io.o -o main

io.o: io.c
	gcc -Wall -std=c11 -c io.c -o io.o

sepia.o: sepia.c
	gcc -Wall -std=c11 -c sepia.c -o sepia.o

main.o: main.c
	gcc -Wall -std=c11 -c main.c -o main.o

sepia_asm.o: sepia_asm.asm
	nasm -felf64 sepia_asm.asm -o sepia_asm.o

clean:
	rm -f *.o main

.PHONY: clean

CC=gcc
CFLAGS=-I.
DEPS = src/sum.h src/subtract.h
#OBJ = main.o sum.o subtract.o 

%.o: %.c $(DEPS)
	gcc -c -o $@ $< $(CFLAGS)

#math: $(OBJ)
#	gcc -o $@ $^ $(CFLAGS)

target: main.o sum.o subtract.o 
	gcc -o math main.o sum.o subtract.o

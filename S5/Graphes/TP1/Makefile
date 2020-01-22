PROG=graphe-test
CC=gcc
CFLAGS=-Wall
OBJETS=main.o graphe-1.o

all: $(OBJETS)
	gcc $(CFLAGS) $(OBJETS) -o $(PROG)
graphe-1.o: graphe-1.c graphe-1.h
	gcc -c $(CFLAGS) graphe-1.c
main.o: main.c
	gcc -c $(CFLAGS) main.c
clean:
	rm *.o

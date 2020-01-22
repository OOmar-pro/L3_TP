PROG=dessin
CC=gcc
CFLAGS=-Wall
OBJETS=main-dessin.o graphe-1.o

all: $(PROG)
$(PROG): $(OBJETS)
	gcc $(CFLAGS) $(OBJETS) -o $(PROG)
graphe-1.o: graphe-1.c graphe-1.h
	gcc -c $(CFLAGS) graphe-1.c
main-dessin.o: main-dessin.c graphe-1.h
	gcc -c $(CFLAGS) main-dessin.c
clean:
	rm *.o

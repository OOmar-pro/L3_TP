PROG=comp-conn test-1 test-2
CC=gcc
CFLAGS=-Wall -Wfatal-errors
OBJETS=main-test-1.o main-test-2.o main-comp-conn.o graphe-2.o mat_bool.o

all: $(PROG)
comp-conn: main-comp-conn.o graphe-2.o mat_bool.o connexite.o
	$(CC) $(CFLAGS) $^ -o $@
main-comp-conn.o: main-comp-conn.c graphe-2.h mat_bool.h connexite.h
	$(CC) -c $(CFLAGS) $<
test-2: main-test-2.o graphe-2.o mat_bool.o connexite.o
	$(CC) $(CFLAGS) $^ -o $@
main-test-2.o: main-test-2.c graphe-2.h mat_bool.h connexite.h
	$(CC) -c $(CFLAGS) $<
test-1: main-test-1.o graphe-2.o
	$(CC) $(CFLAGS) $^ -o $@
main-test-1.o: main-test-1.c graphe-2.h
	$(CC) -c $(CFLAGS) $<
connexite.o: connexite.c mat_bool.h graphe-2.h connexite.h
	$(CC) -c $(CFLAGS) $<
graphe-2.o: graphe-2.c graphe-2.h
	$(CC) -c $(CFLAGS) $<
mat_bool.o: mat_bool.c mat_bool.h
	$(CC) -c $(CFLAGS) $<
clean:
	rm *.o

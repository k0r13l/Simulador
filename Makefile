all: ejecutable

ejecutable: main.o Proceso.o  Nodo.o Lista.o
	$(CC) -o ejecutable main.o Proceso.o Nodo.o Lista.o `pkg-config --cflags gtk+-3.0` `pkg-config --libs gtk+-3.0` -lpthread
main.o:
	$(CC) -c main.c `pkg-config --cflags gtk+-3.0` `pkg-config --libs gtk+-3.0`
Proceso.o:
	$(CC) -c Proceso.h Proceso.c `pkg-config --cflags gtk+-3.0` `pkg-config --libs gtk+-3.0`
#Cola.o:
#	$(CC) -c ADT/Cola.h ADT/Cola.c 
Nodo.o:
	$(CC) -c ADT/Nodo.h ADT/Nodo.c 
Lista.o:
	$(CC) -c ADT/Lista.h ADT/Lista.c
run:
	./ejecutable
clean:
	rm -rf *.o *.gch ejecutable
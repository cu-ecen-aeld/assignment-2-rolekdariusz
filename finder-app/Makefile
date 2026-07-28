
CC := gcc

ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
CC := $(CROSS_COMPILE)gcc
endif

writer: writer.o
	$(CC) writer.o -o writer

writer.o: writer.c
	$(CC) -c writer.c -o writer.o

clean:
	rm -f writer *.o 
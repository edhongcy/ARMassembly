CC = gcc
AS = as


.PHONY: clean

all: loops1 collatz 

loops1: loops1.o
	$(CC) -o $@ $^

collatz: collatz.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o loops1 collatz 

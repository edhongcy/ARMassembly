CC = gcc
AS = as


.PHONY: clean

all: hello1 printf1

hello1: hello1.o
	$(CC) -o $@ $^

printf1: printf1.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o hello1 printf1

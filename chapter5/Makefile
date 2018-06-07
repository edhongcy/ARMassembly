CC = gcc
AS = as


.PHONY: clean

all: branch1  compare1

branch1: branch1.o
	$(CC) -o $@ $^

compare1: compare1.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o branch1 compare1

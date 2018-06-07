CC = gcc
AS = as


.PHONY: clean

all: first 

first: first.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o first 

CC = gcc
AS = as


.PHONY: clean

all: load1 store1

load1: load1.o
	$(CC) -o $@ $^

store1: store1.o
	$(CC) -o $@ $^ 

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o load1 store1

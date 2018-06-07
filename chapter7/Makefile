CC = gcc
AS = as


.PHONY: clean

all: Shift1 

Shift1: Shift1.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o Shift1

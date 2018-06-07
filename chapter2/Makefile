CC = gcc
AS = as


.PHONY: clean

all: sum1 sum2 

sum1: sum1.o
	$(CC) -o $@ $^

sum2: sum2.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o sum1 sum2

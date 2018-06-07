CC = gcc
AS = as


.PHONY: clean

all: array01 

array01: array01.o
	$(CC) -o $@ $^

%.o: %.s
	$(AS) -o $@ $< 

clean:
	rm -f *.o array01

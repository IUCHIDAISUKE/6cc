CFLAGS=-std=c11 -g -static

6cc: main.c
	$(CC) $(CFLAGS) -o $@ $^

test: 6cc
		./test.sh

clean:
		rm -f 6cc *.o *~ tmp*

.PHONY: test clean

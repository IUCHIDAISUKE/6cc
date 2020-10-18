CFLAGS = -std=c11 -g -static

mond: mond.c

test: mond
		./test.sh

clean:
		rm -f mond *.o *~ tmp*

.PHONY: test clean

CFLAGS=-std=c11 -g -static
SRCS=codegen.c main.c parser.c
OBJS=$(SRCS:.c=.o)

VPATH	= ./src ./include

6cc: $(OBJS)
	$(CC) -o 6cc $(OBJS) $(LDFLAGS)

$(OBJS): 6cc.h

test: 6cc
		./test.sh

clean:
		rm -f 6cc *.o *~ tmp*

.PHONY: test clean

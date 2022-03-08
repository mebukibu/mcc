CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

mcc: $(OBJS)
				$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): mcc.h

test: mcc
				./mcc tests > tmp.s
				gcc -static -o tmp tmp.s
				./tmp

clean:
				rm -f mcc *.o *~ tmp*

.PHONY: test clean
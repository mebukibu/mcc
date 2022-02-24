CFLAGS=-std=c11 -g -static

mcc: mcc

test: mcc
				./test.sh

clean:
				rm -f mcc *.o *~ tmp*

.PHONY: test clean
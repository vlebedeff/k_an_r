CFLAGS=-Wall --std=c99 -g

all: bin strrindex_test

bin:
	mkdir bin

strrindex_test:
	cc strrindex.c strrindex_test.c -o bin/strrindex_test && ./bin/strrindex_test

clean:
	rm -rf bin

.PHONY: strrindex_test

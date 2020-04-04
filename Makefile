CFLAGS=-Wall --std=c99

test: bin/strrindex_test

bin:
	mkdir bin

bin/strrindex_test: bin strrindex.c strrindex_test.c
	cc strrindex.c strrindex_test.c -o bin/strrindex_test && ./bin/strrindex_test

clean:
	rm -rf bin

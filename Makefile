CFLAGS=-Wall --std=c99

test: bin/strrindex_test bin/swap_test
	./bin/strrindex_test
	./bin/swap_test

bin:
	mkdir bin

bin/strrindex_test: bin strrindex.c strrindex_test.c
	cc strrindex.c strrindex_test.c -o bin/strrindex_test

bin/swap_test: bin swap_test.c
	cc swap_test.c -o bin/swap_test

clean:
	rm -rf bin

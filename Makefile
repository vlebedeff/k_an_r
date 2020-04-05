CFLAGS=-Wall --std=c99

test: bin/strrindex_test bin/swap_test
	./bin/strrindex_test
	./bin/swap_test

bin/strrindex_test: strrindex.c strrindex_test.c
	mkdir -p bin
	cc strrindex.c strrindex_test.c -o bin/strrindex_test

bin/swap_test: swap_test.c
	mkdir -p bin
	cc swap_test.c -o bin/swap_test

clean:
	rm -rf bin

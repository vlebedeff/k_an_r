CFLAGS=-Wall --std=c99

test: bin/strrindex_test bin/swap_test bin/strcat_test
	./bin/strrindex_test
	./bin/swap_test
	./bin/strcat_test

bin/strrindex_test: strrindex.c strrindex_test.c
	mkdir -p bin
	cc strrindex.c strrindex_test.c -o bin/strrindex_test

bin/swap_test: swap_test.c
	mkdir -p bin
	cc swap_test.c -o bin/swap_test

bin/strcat_test: strcat.c strcat_test.c
	mkdir -p bin
	cc strcat.c strcat_test.c -o bin/strcat_test

clean:
	rm -rf bin

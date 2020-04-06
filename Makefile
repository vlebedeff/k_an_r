CC = gcc
CFLAGS = -Wall --std=c99

test: bin/strrindex_test bin/swap_test bin/strcat_test bin/strend_test bin/expr_test
	./bin/strrindex_test
	./bin/swap_test
	./bin/strcat_test
	./bin/strend_test
	./bin/expr_test

bin/strrindex_test: strrindex.c strrindex_test.c
	mkdir -p bin
	$(CC) $(CFLAGS) strrindex.c strrindex_test.c -o bin/strrindex_test

bin/swap_test: swap_test.c
	mkdir -p bin
	$(CC) $(CFLAGS) swap_test.c -o bin/swap_test

bin/strcat_test: strcat.c strcat_test.c
	mkdir -p bin
	$(CC) $(CFLAGS) strcat.c strcat_test.c -o bin/strcat_test

bin/strend_test: strend.c strend_test.c
	mkdir -p bin
	$(CC) $(CFLAGS) strend.c strend_test.c -o bin/strend_test

bin/expr_test: expr.c expr_test.c
	mkdir -p bin
	$(CC) $(CFLAGS) expr.c expr_test.c -o bin/expr_test

clean:
	rm -rf bin

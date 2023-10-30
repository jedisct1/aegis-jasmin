all: test

src/aegis128l.o: src/aegis128l.s
	$(AS) -o src/aegis128l.o src/aegis128l.s

src/aegis128l.s: src/aegis128l.jazz
	jasminc -checkCT -o src/aegis128l.s src/aegis128l.jazz

src/crypto_aead_aegis128l.o: src/crypto_aead_aegis128l.c src/crypto_aead_aegis128l.h
	$(CC) -O2 -c -o src/crypto_aead_aegis128l.o src/crypto_aead_aegis128l.c

test: src/aegis128l.o src/crypto_aead_aegis128l.o src/test.c
	$(CC) -O2 -o test src/aegis128l.o src/crypto_aead_aegis128l.o src/test.c

clean:
	rm -f src/*.o test

distclean: clean
	rm -f src/*.s

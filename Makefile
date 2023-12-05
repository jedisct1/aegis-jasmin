all: tests

tests: test128l test256

asm: src/aegis128l.s src/aegis256.s

src/aegis128l.o: src/aegis128l.s
	$(AS) -o src/aegis128l.o src/aegis128l.s

src/aegis128l.s: src/aegis128l.jazz
	jasminc -checkCT src/aegis128l.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis128l.s src/aegis128l.jazz

src/crypto_aead_aegis128l.o: src/crypto_aead_aegis128l.c src/crypto_aead_aegis128l.h
	$(CC) -O2 -c -o src/crypto_aead_aegis128l.o src/crypto_aead_aegis128l.c

src/aegis256.o: src/aegis256.s
	$(AS) -o src/aegis256.o src/aegis256.s

src/aegis256.s: src/aegis256.jazz
	jasminc -checkCT src/aegis256.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis256.s src/aegis256.jazz

src/crypto_aead_aegis256.o: src/crypto_aead_aegis256.c src/crypto_aead_aegis256.h
	$(CC) -O2 -c -o src/crypto_aead_aegis256.o src/crypto_aead_aegis256.c

test128l: src/aegis128l.o src/crypto_aead_aegis128l.o src/test128l.c
	$(CC) -O2 -o test128l src/aegis128l.o src/crypto_aead_aegis128l.o src/test128l.c

test256: src/aegis256.o src/crypto_aead_aegis256.o src/test256.c
	$(CC) -O2 -o test256 src/aegis256.o src/crypto_aead_aegis256.o src/test256.c

asmclean:
	rm -f src/*.s

clean:
	rm -f src/*.o test128l test256

distclean: clean asmclean

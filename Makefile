all: sha256.o



sha256.o: sha256.c sha256.h
	cc -c -o sha256.o sha256.c `idris --include`

clean:
	rm -f strings strings.ibc sha256.o

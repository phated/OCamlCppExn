.PHONY: all clean

# Build using dune
all:
	cc -c archive/libthrower.cpp -o archive/libthrower.o
	ar rcs archive/libthrower.a archive/libthrower.o
	cp archive/libthrower.a cpp/libthrower.a
	cp archive/libthrower.h cpp/libthrower.h
	dune build oce_runner.exe
	mkdir -p bin
	cp _build/default/oce_runner.exe bin/

clean:
	dune clean
	git clean -dfXq

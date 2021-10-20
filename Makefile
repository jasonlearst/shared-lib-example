COMPILER=g++

all: lib
	$(COMPILER) -L. -Wl,-rpath=$(PWD) -Wall -o code main.cpp -llibrary

lib:
	$(COMPILER) -std=c++14 -c -fPIC -o library.o library.cpp
	$(COMPILER) -shared -o liblibrary.so library.o

clean:
	rm code *.so *.o
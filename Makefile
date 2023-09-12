.PHONY: all compile assemble link load clean

ARMPRE:=arm-linux-gnueabihf-
MALMAT:=./understand-elf/matmul

all: preprocess compile assemble link

preprocess:
	$(ARMPRE)g++ -std=c++17 -E $(MALMAT).cpp -o $(MALMAT).i

compile:
	$(ARMPRE)g++ -std=c++17 -S $(MALMAT).cpp -o $(MALMAT).s

assemble:
	$(ARMPRE)g++ -std=c++17 -c $(MALMAT).cpp -o $(MALMAT).o

link:
	$(ARMPRE)g++ -std=c++17 $(MALMAT).cpp -o $(MALMAT)

clean:
	rm */*.i */*.s */*.o 
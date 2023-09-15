# coding by Jasmine Xie
.PHONY: all compile assemble link load clean

ARMPRE:=arm-linux-gnueabihf-
MALMAT:=./understand-elf/matmul-v2

all: preprocess compile assemble link
	@if [ ! -d ./understand-elf/tree-process ];then \
		mkdir ./understand-elf/tree-process; \
	fi;
	@if [ ! -d ./understand-elf/rtl-process ];then \
		mkdir ./understand-elf/rtl-process; \
	fi;
	$(ARMPRE)g++ -std=c++17 -fdump-tree-all-graph -O0 $(MALMAT).cpp 
	@mv ./a* ./understand-elf/tree-process/
	$(ARMPRE)g++ -std=c++17 -fdump-rtl-all-graph -O0 $(MALMAT).cpp 
	@mv ./a* ./understand-elf/rtl-process/

def-all: def-preprocess def-compile def-assemble
	@if [ ! -d ./understand-elf/defN-tree-process ];then \
		mkdir ./understand-elf/defN-tree-process; \
	fi;
	@if [ ! -d ./understand-elf/defN-rtl-process ];then \
		mkdir ./understand-elf/defN-rtl-process; \
	fi;
	$(ARMPRE)g++ -std=c++17 -fdump-tree-all-graph -O0 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/defN-tree-process/
	$(ARMPRE)g++ -std=c++17 -fdump-rtl-all-graph -O0 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/defN-rtl-process/

preprocess:
	@$(ARMPRE)g++ -std=c++17 -O0 -E $(MALMAT).cpp -o $(MALMAT).i

compile:
	@$(ARMPRE)g++ -std=c++17 -O0 -S $(MALMAT).cpp -o $(MALMAT).s

assemble:
	@$(ARMPRE)g++ -std=c++17 -O0 -c $(MALMAT).cpp -o $(MALMAT).o

link:
	@$(ARMPRE)g++ -std=c++17 $(MALMAT).cpp -o $(MALMAT)

def-preprocess:
	@$(ARMPRE)g++ -std=c++17 -O0 -E $(MALMAT).cpp -o $(MALMAT)-defN.i -D N=100

def-compile:
	@$(ARMPRE)g++ -std=c++17 -O0 -S $(MALMAT).cpp -o $(MALMAT)-defN.s -D N=100

def-assemble:
	@$(ARMPRE)g++ -std=c++17 -O0 -c $(MALMAT).cpp -o $(MALMAT)-defN.o -D N=100

tokens:
	@clang -std=c++17 -E -Xclang -dump-tokens $(MALMAT).cpp

clean:
	rm -v */*.i */*.s */*.o 
	rm -vrf ./understand-elf/tree-process ./understand-elf/rtl-process
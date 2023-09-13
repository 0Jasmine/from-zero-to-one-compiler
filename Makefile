# coding by Jasmine Xie
.PHONY: all compile assemble link load clean

ARMPRE:=arm-linux-gnueabihf-
MALMAT:=./understand-elf/matmul

all: preprocess compile assemble link
	@if [ ! -d ./understand-elf/tree-process ];then \
		mkdir ./understand-elf/tree-process; \
	fi;
	@if [ ! -d ./understand-elf/rtl-process ];then \
		mkdir ./understand-elf/rtl-process; \
	fi;
	$(ARMPRE)g++ -std=c++17 -fdump-tree-all -O0 $(MALMAT).cpp 
	@mv ./a* ./understand-elf/tree-process/
	$(ARMPRE)g++ -std=c++17 -fdump-rtl-all -O0 $(MALMAT).cpp 
	@mv ./a* ./understand-elf/rtl-process/

preprocess:
	$(ARMPRE)g++ -std=c++17 -O0 -E $(MALMAT).cpp -o $(MALMAT).i

compile:
	$(ARMPRE)g++ -std=c++17 -O0 -S $(MALMAT).cpp -o $(MALMAT).s

assemble:
	$(ARMPRE)g++ -std=c++17 -O0 -c $(MALMAT).cpp -o $(MALMAT).o

link:
	$(ARMPRE)g++ -std=c++17 $(MALMAT).cpp -o $(MALMAT)

clean:
	rm -v */*.i */*.s */*.o 
	rm -vrf ./understand-elf/tree-process ./understand-elf/rtl-process
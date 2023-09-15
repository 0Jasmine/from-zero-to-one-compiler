# coding by Jasmine Xie
.PHONY: all compile assemble link load clean

ARMCPL:=arm-linux-gnueabihf-g++
LLVMCPL:=clang++
MALMAT:=./understand-elf/matmul-v2

all: preprocess compile assemble link
	@if [ ! -d ./understand-elf/tree-process ];then \
		mkdir ./understand-elf/tree-process; \
	fi;
	@if [ ! -d ./understand-elf/rtl-process ];then \
		mkdir ./understand-elf/rtl-process; \
	fi;
	$(ARMCPL) -std=c++17 -fdump-tree-all-graph -O0 $(MALMAT).cpp
	@mv ./a* ./understand-elf/tree-process/
	$(ARMCPL) -std=c++17 -fdump-rtl-all-graph -O0 $(MALMAT).cpp 
	@mv ./a* ./understand-elf/rtl-process/

def-all: def-preprocess def-compile def-assemble
	@if [ ! -d ./understand-elf/defN-tree-process ];then \
		mkdir ./understand-elf/defN-tree-process; \
	fi;
	@if [ ! -d ./understand-elf/defN-rtl-process ];then \
		mkdir ./understand-elf/defN-rtl-process; \
	fi;
	$(ARMCPL) -std=c++17 -fdump-tree-all-graph -O0 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/defN-tree-process/
	$(ARMCPL) -std=c++17 -fdump-rtl-all-graph -O0 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/defN-rtl-process/

opt3-all: preprocess-optimize compile-optimize assemble-optimize
	@if [ ! -d ./understand-elf/opt-tree-process ];then \
		mkdir ./understand-elf/opt-tree-process; \
	fi;
	@if [ ! -d ./understand-elf/opt-rtl-process ];then \
		mkdir ./understand-elf/opt-rtl-process; \
	fi;
	$(ARMCPL) -std=c++17 -fdump-tree-all-graph -O3 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt-tree-process/
	$(ARMCPL) -std=c++17 -fdump-rtl-all-graph -O3 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt-rtl-process/

opt1-all:
	@if [ ! -d ./understand-elf/opt1-tree-process ];then \
		mkdir ./understand-elf/opt1-tree-process; \
	fi;
	@if [ ! -d ./understand-elf/opt1-rtl-process ];then \
		mkdir ./understand-elf/opt1-rtl-process; \
	fi;
	$(ARMCPL) -std=c++17 -fdump-tree-all-graph -O1 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt1-tree-process/
	$(ARMCPL) -std=c++17 -fdump-rtl-all-graph -O1 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt1-rtl-process/

opt2-all:
	@if [ ! -d ./understand-elf/opt2-tree-process ];then \
		mkdir ./understand-elf/opt2-tree-process; \
	fi;
	@if [ ! -d ./understand-elf/opt2-rtl-process ];then \
		mkdir ./understand-elf/opt2-rtl-process; \
	fi;
	$(ARMCPL) -std=c++17 -fdump-tree-all-graph -O2 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt2-tree-process/
	$(ARMCPL) -std=c++17 -fdump-rtl-all-graph -O2 $(MALMAT).cpp -D N=100
	@mv ./a* ./understand-elf/opt2-rtl-process/

preprocess:
	@$(LLVMCPL) -std=c++17 -O0 -E $(MALMAT).cpp -o $(MALMAT).i

compile:
	@$(LLVMCPL) -std=c++17 -O0 -S $(MALMAT).cpp -o $(MALMAT).s

assemble:
	@$(LLVMCPL) -std=c++17 -O0 -c $(MALMAT).cpp -o $(MALMAT).o

link:
	@$(LLVMCPL) -std=c++17 $(MALMAT).cpp -o $(MALMAT)

def-preprocess:
	@$(LLVMCPL) -std=c++17 -O0 -E $(MALMAT).cpp -o $(MALMAT)-defN.i -D N=100

def-compile:
	@$(LLVMCPL) -std=c++17 -O0 -S $(MALMAT).cpp -o $(MALMAT)-defN.s -D N=100

def-assemble:
	@$(LLVMCPL) -std=c++17 -O0 -c $(MALMAT).cpp -o $(MALMAT)-defN.o -D N=100

preprocess-optimize:
	@$(LLVMCPL) -std=c++17 -O3 -E $(MALMAT).cpp -o $(MALMAT)-opt.i -D N=100

compile-optimize:
	@$(LLVMCPL) -std=c++17 -O3 -S $(MALMAT).cpp -o $(MALMAT)-opt.s -D N=100

assemble-optimize:
	@$(LLVMCPL) -std=c++17 -O3 -c $(MALMAT).cpp -o $(MALMAT)-opt.o -D N=100

tokens:
	@$(LLVMCPL) -std=c++17 -E -Xclang -dump-tokens $(MALMAT).cpp

ast:
	@$(LLVMCPL) -std=c++17 -E -Xclang -ast-dump $(MALMAT).cpp

clean:
	rm -v */*.i */*.s */*.o 
	rm -vrf ./understand-elf/*tree-process ./understand-elf/*rtl-process
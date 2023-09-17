# coding by Jasmine Xie
.PHONY: all compile assemble link load clean

ARMCPL:=arm-linux-gnueabihf-g++
LLVMCPL:=clang++
MALMAT:=./understand-elf/matmul-v2
ORIGINBC:=./understand-elf/matmul-v2-O2
test-pass:=argpromotion
unroll_opt:=-targetlibinfo -domtree -loops -loop-simplify -lcssa -basic-aa -aa -scalar-evolution -loop-unroll -verify

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

llvmir:
	@$(LLVMCPL) -std=c++17 -O0 -S -emit-llvm $(MALMAT).cpp -o $(MALMAT)-O0.ll
	@$(LLVMCPL) -std=c++17 -O1 -S -emit-llvm $(MALMAT).cpp -o $(MALMAT)-O1.ll
	@$(LLVMCPL) -std=c++17 -O2 -S -emit-llvm $(MALMAT).cpp -o $(MALMAT)-O2.ll
	@$(LLVMCPL) -std=c++17 -O3 -S -emit-llvm $(MALMAT).cpp -o $(MALMAT)-O3.ll

pass:
	llc -print-before-all -print-after-all $(MALMAT)-O0.ll > ./understand-elf/pass.log 2>&1

trans-bc:
	for tf in $$(find -type f -wholename "*.ll");do \
		llvm-as $$tf; \
	done;

trans-ll:
	for tf in $$(find -type f -wholename "*.bc");do \
		llvm-dis $$tf; \
	done;

test-opt:
	@if [ $(test-pass) = argpromotion ];then \
	 echo "default to test pass 'argpromotion' "; \
	 echo "to specify pass use '-e test-pass=<specific pass>'"; \
	fi
	@if [ ! -d ./understand-elf/pass-test ];then \
		mkdir ./understand-elf/pass-test; \
	fi;
	opt --$(test-pass) $(ORIGINBC).bc -o ./understand-elf/pass-test/$(test-pass).bc
	llvm-dis ./understand-elf/pass-test/$(test-pass).bc
	-diff ./understand-elf/pass-test/$(test-pass).ll $(ORIGINBC).ll

test-all-option:
	@if [ ! -d ./understand-elf/pass-test ];then \
		mkdir ./understand-elf/pass-test; \
	fi;
	@echo "output the diff page into ./understand-elf/pass-test/pass-result"
	@echo > ./understand-elf/pass-test/pass-result
	@-for option in $$(cat ./understand-elf/opttf-options);do \
		opt --$$option $(ORIGINBC).bc -o ./understand-elf/pass-test/$$option.bc; \
		if [ $$? -eq 0 ];then \
			llvm-dis ./understand-elf/pass-test/$$option.bc &2> /dev/null; \
			diff ./understand-elf/pass-test/$$option.ll $(ORIGINBC).ll >> ./understand-elf/pass-test/pass-result ; \
			echo >> ./understand-elf/pass-test/pass-result; \
			echo >> ./understand-elf/pass-test/pass-result; \
		fi; \
	done
	@echo "Finish $$(wc -l ./understand-elf/opttf-options | grep -E -o '[0-9]+') pass"

test-unroll:
	@opt $(unroll_opt)  $(ORIGINBC).bc -o ./understand-elf/pass-test/test-unroll.bc
	@llvm-dis ./understand-elf/pass-test/test-unroll.bc &2> /dev/null; 
	@diff ./understand-elf/pass-test/test-unroll.ll $(ORIGINBC).ll

test-ir:
	clang ./intro-to-llvmir/simple-example.ll -o ./intro-to-llvmir/simple-example
	@echo "execute the elf without command line arguments, its output:"
	./intro-to-llvmir/simple-example
	@echo "execute the elf with command line arguments, its output:"
	./intro-to-llvmir/simple-example two arguments

clean:
	rm -v */*.i */*.s */*.o 
	rm -vrf ./understand-elf/*tree-process ./understand-elf/*rtl-process
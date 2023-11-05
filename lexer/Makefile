all:
	bison -Wcounterexamples -v -d ./src/parser.yy -o ./src/parser.cpp
	g++ -g -std=c++20 ./src/parser.cpp -o bin/parser


testReg:
	@g++ -g -std=c++20 ./test/testReg.cpp -o bin/test
	@./bin/test
	@echo

testBison:
	bison -v -d ./test/test.yy -o ./test/test.cpp
	g++ -g -std=c++20 ./test/test.cpp -o bin/btest

testSet:
	@g++ -g -std=c++20 ./test/testMerge.cpp -o bin/testSet
	@./bin/testSet
	@echo
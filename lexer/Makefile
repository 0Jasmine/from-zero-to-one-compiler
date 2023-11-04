all:
	bison -Wcounterexamples -v -d ./src/parser.yy -o ./src/parser.cpp
	g++ -g -std=c++20 ./src/parser.cpp -o bin/parser

testReg:
	@g++ -g -std=c++20 ./test/testReg.cpp -o bin/test
	@./bin/test
	@echo

testBison:
	bison -v -d ./src/test.yy -o ./src/test.cpp
	g++ -g -std=c++20 ./src/test.cpp -o bin/btest

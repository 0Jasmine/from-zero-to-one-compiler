.PHONY: calculator postexpr test clean

calculator:
	@bison -d easy-parser.y -o easy-parser.c
	@gcc -g -o easy-parser easy-parser.c 2> /dev/null
	./easy-parser

postexpr:
	@bison -d post-expr.y -o post-expr.c
	@gcc -g -o post-expr post-expr.c 2> /dev/null
	./post-expr

parsearm:
	@bison -d parse-arm.y -o parse-arm.c
	@gcc -g -o parse-arm parse-arm.c 2> /dev/null
	./parse-arm

test:
	@g++ -o test trans.cpp
	@./test
	@rm test

clean:
	ls | grep easy-parser  | grep -v easy-parser.y | xargs rm
	ls | grep post-expr  | grep -v post-expr.y | xargs rm
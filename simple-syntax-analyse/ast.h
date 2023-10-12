#include<memory>

int id_hash();

enum class NodeType{
    NUMBER,
    ADD,
    SUB,
    MUL,
    DIV,
    BRACKET,
    UMINUS,
    EQUL,
    ID
};

class ast
{
protected:
    std::unique_ptr<ast> _left;
    std::unique_ptr<ast> _right;
    NodeType _nodetype;
    double value;
public:
    ast();
    static void insert(char, char*, char*);
    double calculate();
    ~ast();
};
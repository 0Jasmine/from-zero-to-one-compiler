/// @brief 我想用动态哈希实现一个符号表
/// 初定用可扩展 Hash 好了

#include "ast.h"
#include <memory>
#include <vector>

constexpr int buckets = 3;

class symbol
{
private:
    std::unique_ptr<char> _name{nullptr};
    double _value{__DBL_MAX__};
    ast* _calexpr;
    
public:
    symbol(char*);
    friend bool operator==(symbol&,symbol&);
    ~symbol() = default;
};

class symbol_bucket
{
private:
    symbol* _bucket;
    int _depth;
public:
    symbol_bucket(/* args */);
    ~symbol_bucket();
};


class symbol_table
{
private:
    std::vector<symbol_bucket*> _table;
    int _depth;
public:
    symbol_table(/* args */);
    ~symbol_table();
    void insert(char*);
    double find(char*);
};


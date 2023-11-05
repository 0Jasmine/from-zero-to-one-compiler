/// @brief 类型定义
#include <string>
using std::string;

#include <unordered_set>
using EC = std::unordered_set<int>;

#include <unordered_map>

#include <memory>
using std::shared_ptr;

#include <vector>
using std::vector;
class RegUnit;
extern std::vector<std::shared_ptr<RegUnit> *> units;

#include <cstdarg>
#include <iostream>

/**
 * 正则表达式的运算类型
 */

enum class RegOP
{
    ORIGIN,
    EPSILON,
    SINGLE,
    CONCAT,
    ORSET,
    CLOSURE
};


/**
 * 关于 NFA/DFA 状态的转换部分
 */

class State
{
protected:
    unsigned _number{};
    bool _loop{false};

public:
    State() = delete;
    State(unsigned number) : _number(number) {}
    unsigned GetNumber() { return _number; }
    virtual void SetNext(char move, unsigned next) = 0;
    ~State() = default;
};

class NFAState : public State
{
private:
    /// @brief 指向原 unit 的指针
    RegUnit *_unit;
    /// @brief 下一个状态是否有动作， 默认 . 对应 epsilon
    char _move{'.'};
    /// @brief 以上 move 对应的动作
    unsigned _next{0};
    /// @brief epsilon 闭包
    EC _epsilon_closure;
    friend class RegUnit;
    friend class EpsilonUnit;
    friend class SingleUnit;
    friend class ConcatUnit;
    friend class OrUnit;
    friend class ClosureUnit;
    friend class DFAState;
    friend class Transformer;
public:
    NFAState() = delete;
    NFAState(unsigned number, RegUnit *unit) : State(number) { _unit = unit; }
    /// @brief 根据动作修改成员变量的接口
    /// @param move 动作
    /// @param next 下一个状态
    void SetNext(char move, unsigned next) override;
    char GetMove(){return _move;}
    /// @brief 可视化重写函数接口
    friend std::ostream &operator<<(std::ostream &out, const NFAState &nfa);
    ~NFAState() = default;
};

class DFAState : public State
{
private:
    std::unordered_map<char, unsigned> _next{};
    EC _nfa{};
    bool _finish{false};
    friend class Transformer;

public:
    DFAState() = delete;
    DFAState(unsigned number, bool finish = false) : State(number), _finish(finish) {}
    void SetNext(char move, unsigned next) override;
    void GetState(const vector<NFAState *>& nfas, std::unordered_set<DFAState *> &dfas, vector<DFAState*>& ptrs);
    friend std::ostream &operator<<(std::ostream &out, const DFAState &dfa);
    friend bool operator==(const DFAState &dfa1, const DFAState &dfa2);
    ~DFAState() = default;
};

class Transformer
{
private:
    vector<NFAState *> _nfas;
    std::unordered_set<DFAState *> _dfas;
    friend class RegUnit;
    friend class EpsilonUnit;
    friend class SingleUnit;
    friend class ConcatUnit;
    friend class OrUnit;
    friend class ClosureUnit;
    void ToDFA();

public:
    Transformer() = delete;
    /// @brief 利用提供的 RegUnit 接口， 形式化 NFAState 并构建 DFA
    /// @param  正则表达式的顶层模块
    Transformer(RegUnit *);
    ~Transformer();
};

class RegUnit
{
protected:
    friend class EpsilonUnit;
    friend class SingleUnit;
    friend class ConcatUnit;
    friend class OrUnit;
    friend class ClosureUnit;
    /// @brief 对应每一个 Unit 的开始, shared_ptr 做内存管理
    shared_ptr<RegUnit> _begin{nullptr};
    /// @brief 对应每一个 Unit 的结束
    shared_ptr<RegUnit> _end{nullptr};
    /// @brief 记录 Unit 类型
    RegOP _type{RegOP::ORIGIN};

public:
    /// @brief 外层调用构造函数
    RegUnit() { _begin = _end = std::make_shared<RegUnit>(true); }
    /// @brief 内部调用构造函数
    /// @param 无意义，只是函数签名的区分 
    RegUnit(bool) noexcept { _begin = _end = nullptr; }
    virtual ~RegUnit() = default;
    /// @brief 使用 virtual print 是为了调试更清晰
    virtual void print(){ printf("%p %s -> ", this, "RegUnit"); }
    /// @brief 使用 虚函数 抽象， 对应不同类 unit 的下一个 unit
    /// @return 下一个 unit 的指针
    virtual RegUnit *next() { return _end == nullptr ? nullptr : _end->_end.get(); }
    virtual shared_ptr<RegUnit> &begin() { return this->_begin; }
    virtual shared_ptr<RegUnit> &end() { return this->_end; }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->_end = unit; }

    /// @brief 递归地完成 episilon 集合的计算
    /// @param tf Transformer 类型的指针
    /// @param Top_End 因为有一个 next 的递归， Top_End 作为可选的递归终止的位置
    /// @return 返回处理后的头部 NFA State
    virtual NFAState *Move(Transformer *tf, NFAState *Top_End);
};

class EpsilonUnit : public RegUnit
{
public:
    EpsilonUnit() = delete;
    EpsilonUnit(shared_ptr<RegUnit> &unit);
    void print() override;
    ~EpsilonUnit() = default;
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->SetNext(unit); }
    NFAState *Move(Transformer *tf, NFAState *Top_End) override;
};

class SingleUnit : public RegUnit
{
protected:
    char _a;

public:
    SingleUnit(const char &a);
    void print() override;
    ~SingleUnit() = default;
    char GetChar() { return _a; }
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->SetNext(unit); }
    virtual NFAState *Move(Transformer *tf, NFAState *Top_End) override;
};

class ConcatUnit : public RegUnit
{
protected:
public:
    ConcatUnit() = delete;
    ConcatUnit(shared_ptr<RegUnit> &unit);
    ConcatUnit(shared_ptr<RegUnit> &unit1, shared_ptr<RegUnit> &unit2);
    void append(shared_ptr<RegUnit> &unit);
    void print() override;
    ~ConcatUnit() = default;
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->SetNext(unit); }
    virtual NFAState *Move(Transformer *tf, NFAState *Top_End) override;
};

class OrUnit : public RegUnit
{
protected:
    vector<shared_ptr<RegUnit>> ors;
    static int wsc;

public:
    OrUnit() = delete;
    OrUnit(int concat_len, ...);
    void add(shared_ptr<RegUnit> &unit);
    void print() override;
    ~OrUnit() = default;
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->SetNext(unit); }
    virtual NFAState *Move(Transformer *tf, NFAState *Top_End) override;
};

class ClosureUnit : public RegUnit
{
protected:
    static const unsigned infinite = 0xffffffff;
    unsigned _upcount{0};
    unsigned _downcount{0};

public:
    ClosureUnit() = delete;
    ClosureUnit(shared_ptr<RegUnit> &unit, unsigned downcount, unsigned upcount);
    void print() override ;
    ~ClosureUnit() = default;
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit) { _end->SetNext(unit); }

    virtual NFAState *Move(Transformer *tf, NFAState *Top_End) override;
};
int OrUnit::wsc = 0;


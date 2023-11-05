// @brief Thompson 构造法

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

#include "defines.h"
#include <queue>
using std::priority_queue;

/// @brief 递归地完成 episilon 集合的计算
/// @param tf
/// @param Top_End 因为有一个 next 的递归， Top_End 作为可选的递归终止的位置
/// @return
NFAState *RegUnit::Move(Transformer *tf, NFAState *Top_End)
{

    int index = tf->_nfas.size();

    // 插入新的 NFA 状态
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    auto next = this->next();

    if (Top_End && next && next->_begin.get() != Top_End->_unit)
    {
        auto nx_nfa = next->Move(tf, Top_End);

        // epsilon 闭包的合并
        tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_number);
        tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_epsilon_closure.begin(), nx_nfa->_epsilon_closure.end());
    }
    else if (Top_End != nullptr)
    {
        tf->_nfas[index]->_epsilon_closure.insert(Top_End->_number);
        tf->_nfas[index]->_epsilon_closure.insert(Top_End->_epsilon_closure.begin(), Top_End->_epsilon_closure.end());
    }
    // 返回对应的 NFAState
    return tf->_nfas[index];
}

EpsilonUnit::EpsilonUnit(shared_ptr<RegUnit> &unit)
{
    this->_type = RegOP::EPSILON;
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();

    if (unit != nullptr)
    {
        // -o-...-O
        this->begin()->SetNext(unit);
        unit->SetNext(this->end());
    }
    else
    {
        this->begin()->SetNext(this->end());
    }
}
void EpsilonUnit::print()
{
    printf("%p %s ", this, "EpsilonUnit");
    RegUnit *finish = this->_end.get();
    RegUnit *iter = this->_begin.get();
    while (iter != finish)
    {
        iter->print();
        iter = iter->next();
    }
    this->_end->print();
}
NFAState *EpsilonUnit::Move(Transformer *tf, NFAState *Top_End)
{
    int index = tf->_nfas.size();
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    // 需要先完成尾部的 State 的闭包计算
    int finish_index = tf->_nfas.size();
    auto end_nfa = this->_end->Move(tf, Top_End);

    auto next = _begin->next();
    auto nx_nfa = end_nfa; // 如果 if 分支不执行就直接合并头尾
    if (Top_End && next->_begin.get() != Top_End->_unit)
    {
        nx_nfa = next->Move(tf, end_nfa);
    }

    // 对于 epsilon unit 头尾闭包的合并
    tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_number);
    tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_epsilon_closure.begin(), nx_nfa->_epsilon_closure.end());

    if (nx_nfa != end_nfa)
    {
        tf->_nfas[index]->_epsilon_closure.insert(end_nfa->_number);
        tf->_nfas[index]->_epsilon_closure.insert(end_nfa->_epsilon_closure.begin(), end_nfa->_epsilon_closure.end());
    }
    return tf->_nfas[index];
}

SingleUnit::SingleUnit(const char &a) : _a(a)
{
    this->_type = RegOP::SINGLE;
    // -o-O
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();

    this->_begin->SetNext(this->_end);
}
void SingleUnit::print()
{
    printf("%p %s : %c ", this, "SingleUnit", this->_a);
    RegUnit *finish = this->_end.get();
    RegUnit *iter = this->_begin.get();
    while (iter != finish)
    {
        iter->print();
        iter = iter->next();
    }
    this->_end->print();
}
NFAState *SingleUnit::Move(Transformer *tf, NFAState *Top_End)
{
    int index = tf->_nfas.size();
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    // 需要先完成尾部的 State 的闭包计算
    int finish_index = tf->_nfas.size();
    auto end_nfa = this->_end->Move(tf, Top_End);

    // SingleUnit 不需要完成头尾合并
    tf->_nfas[index]->SetNext(_a, end_nfa->_number);

    return tf->_nfas[index];
}
ConcatUnit::ConcatUnit(shared_ptr<RegUnit> &unit)
{
    this->_type = RegOP::CONCAT;
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();

    this->_begin->SetNext(unit);
    unit->SetNext(this->_end);
}
ConcatUnit::ConcatUnit(shared_ptr<RegUnit> &unit1, shared_ptr<RegUnit> &unit2)
{
    this->_type = RegOP::CONCAT;
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();
    auto eps = std::make_shared<RegUnit>();

    this->_begin->SetNext(unit1);
    unit1->SetNext(eps);
    eps->SetNext(unit2);
    unit2->SetNext(this->_end);
}
void ConcatUnit::append(shared_ptr<RegUnit> &unit)
{
    auto eps = std::make_shared<RegUnit>();

    this->SetNext(unit);
    unit->SetNext(eps);
    _end = eps;
}
void ConcatUnit::print()
{
    printf("%p %s ", this, "ConcatUnit");
    RegUnit *finish = this->_end.get();
    RegUnit *next = this->_begin.get();
    while (next != finish)
    {
        next->print();
        next = next->next();
    }
    this->_end->print();
}
NFAState *ConcatUnit::Move(Transformer *tf, NFAState *Top_End)
{
    int index = tf->_nfas.size();
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    NFAState *pre = tf->_nfas[index];

    // 需要先完成尾部的 State 的闭包计算
    int finish_index = tf->_nfas.size();
    auto end_nfa = this->_end->Move(tf, Top_End);

    RegUnit *iter = this->_begin.get()->next();
    auto nx_nfa = iter->Move(tf, end_nfa);

    pre->_epsilon_closure.insert(nx_nfa->_number);
    pre->_epsilon_closure.insert(nx_nfa->_epsilon_closure.begin(), nx_nfa->_epsilon_closure.end());

    return tf->_nfas[index];
}

OrUnit::OrUnit(int concat_len, ...)
{
    this->_type = RegOP::ORSET;
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();

    va_list ccs;
    va_start(ccs, concat_len);
    shared_ptr<RegUnit> cc;
    for (int i = 0; i < concat_len; i++)
    {
        cc = va_arg(ccs, shared_ptr<RegUnit>);
        cc->SetNext(this->_end);
        ors.emplace_back(shared_ptr<RegUnit>(cc));
    }
    va_end(ccs);
}
void OrUnit::add(shared_ptr<RegUnit> &unit)
{
    unit->SetNext(this->_end);
    ors.emplace_back(shared_ptr<RegUnit>(unit));
}
void OrUnit::print()
{
    if (wsc)
    {
        for (int i = 0; i < wsc; i++)
            printf("\t");
    }
    printf("%p %s ", this, "OrUnit");
    wsc++;
    this->_begin->print();
    printf("\n");
    for (auto &_or : ors)
    {
        if (wsc)
        {
            for (int i = 0; i < wsc; i++)
                printf("\t");
        }
        _or->print();
        printf("\n");
    }
    this->_end->print();
    wsc--;
}
NFAState *OrUnit::Move(Transformer *tf, NFAState *Top_End)
{
    int index = tf->_nfas.size();
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    // 需要先完成尾部的 State 的闭包计算
    int finish_index = tf->_nfas.size();
    auto end_nfa = this->_end->Move(tf, Top_End);

    for (auto &_or : ors)
    {
        auto nx_nfa = _or->Move(tf, end_nfa);

        tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_number);
        tf->_nfas[index]->_epsilon_closure.insert(nx_nfa->_epsilon_closure.begin(), nx_nfa->_epsilon_closure.end());
    }

    return tf->_nfas[index];
}

ClosureUnit::ClosureUnit(shared_ptr<RegUnit> &unit, unsigned downcount = 0, unsigned upcount = infinite)
{
    this->_type = RegOP::CLOSURE;
    this->_begin = std::make_shared<RegUnit>();
    this->_end = std::make_shared<RegUnit>();
    this->_upcount = upcount;
    this->_downcount = downcount;

    this->_begin->SetNext(unit);
    unit->SetNext(this->_end);
}
void ClosureUnit::print()
{
    printf("%p %s %u~%u times", this, "ClosureUnit", _downcount, _upcount);
    RegUnit *finish = this->_end.get();
    RegUnit *iter = this->_begin.get();
    while (iter != finish)
    {
        iter->print();
        iter = iter->next();
    }
    this->_end->print();
}
NFAState *ClosureUnit::Move(Transformer *tf, NFAState *Top_End)
{
    int index = tf->_nfas.size();
    tf->_nfas.emplace_back(new NFAState{index, this->_begin.get()});

    // 需要先完成尾部的 State 的闭包计算
    int finish_index = tf->_nfas.size();
    auto end_nfa = this->_end->Move(tf, Top_End);

    // 从后向前完成闭包的运算
    // 对于无限次数
    if (this->_upcount == infinite)
    {
        auto next = this->_begin->next();
        NFAState *last_end = next->Move(tf, end_nfa);
        end_nfa->_epsilon_closure.insert(last_end->_number);
        end_nfa->_epsilon_closure.insert(last_end->_epsilon_closure.begin(), last_end->_epsilon_closure.end());

        end_nfa->_loop = true;

        last_end->_epsilon_closure.insert(end_nfa->_number);
        last_end->_epsilon_closure.insert(end_nfa->_epsilon_closure.begin(), last_end->_epsilon_closure.end());

        for (int i = 0; i < _downcount; i++)
        {
            // 类似 Concat Unit 的方式连接
            last_end = next->Move(tf, last_end);
        }
        tf->_nfas[index]->_epsilon_closure.insert(last_end->_number);
        tf->_nfas[index]->_epsilon_closure.insert(last_end->_epsilon_closure.begin(), last_end->_epsilon_closure.end());
    }
    else
    {

        // 对于有限次数
        //  _downcount - _upcount 之间的次数

        auto next = this->_begin->next();
        NFAState *last_end = end_nfa;
        for (int i = _downcount; i < _upcount; i++)
        {
            last_end = next->Move(tf, last_end);

            last_end->_epsilon_closure.insert(end_nfa->_number);
            last_end->_epsilon_closure.insert(end_nfa->_epsilon_closure.begin(), end_nfa->_epsilon_closure.end());

            last_end->_epsilon_closure.insert(Top_End->_number);
            last_end->_epsilon_closure.insert(Top_End->_epsilon_closure.begin(), Top_End->_epsilon_closure.end());
        }

        // 对于 至少需要的次数

        for (int i = 0; i < _downcount; i++)
        {
            // 类似 Concat Unit 的方式连接
            last_end = next->Move(tf, last_end);
        }

        tf->_nfas[index]->_epsilon_closure.insert(last_end->_number);
        tf->_nfas[index]->_epsilon_closure.insert(last_end->_epsilon_closure.begin(), last_end->_epsilon_closure.end());
    }
    return tf->_nfas[index];
}

/**
 * 关于 NFA/DFA 状态的转换部分
 */

void NFAState::SetNext(char move, unsigned next)
{
    _move = move;
    _next = next;
}
std::ostream &operator<<(std::ostream &out, const NFAState &nfa)
{
    out << "NFA STATE " << nfa._number << '\t';
    out << "Same As : ";
    for (auto &ec : nfa._epsilon_closure)
    {
        out << ec << ' ';
    }
    out << std::endl;
    return out;
}

void DFAState::SetNext(char move, unsigned next)
{
    this->_next.insert({move, next});
}
std::ostream &operator<<(std::ostream &out, const DFAState &dfa)
{
    out << "DFA STATE " << dfa._number << '\t' << (dfa._finish ? "Fin\t" : "Not Fin\t");
    out << "Contain : ";
    for (auto &nfa : dfa._nfa)
    {
        out << nfa << ' ';
    }
    if (dfa._next.size())
        out << std::endl;
    for (auto &next : dfa._next)
    {
        out << "\t\t" << next.first << " --> " << next.second << std::endl;
    }
    out << std::endl;
    return out;
}
bool operator==(const DFAState &dfa1, const DFAState &dfa2)
{
    return dfa1._nfa == dfa2._nfa;
}
Transformer::Transformer(RegUnit *regex)
{
    // 根据已有 NFA 形式化
    regex->Move(this, nullptr);
    printf("\nnfa size=%d\n", _nfas.size());
    for (auto &nfa : _nfas)
    {
        std::cout << *nfa;
    }
    ToDFA();
    printf("\dfa size=%d\n", _dfas.size());
    for (auto &dfa : _dfas)
    {
        std::cout << *dfa;
    }
}

Transformer::~Transformer()
{
    for (auto &nfa : _nfas)
    {
        delete nfa;
    }
    _nfas.clear();
    for (auto &dfa : _dfas)
    {
        delete dfa;
    }
    _dfas.clear();
    for (auto &it : units)
    {
        delete it;
    }
    units.clear();
}

void DFAState::GetState(const vector<NFAState *> &nfas, std::unordered_set<DFAState *> &dfas, vector<DFAState *> &ptrs)
{
    // 对计算机来说， 不如更高效的排个序
    auto cmp = [](NFAState *nfa1, NFAState *nfa2)
    { return nfa1->GetMove() < nfa2->GetMove(); };
    priority_queue<NFAState *, vector<NFAState *>, decltype(cmp)> NFA_queue(cmp);

    for (auto &next : this->_nfa)
    {
        NFA_queue.push(nfas[next]);
        if (next == 1)
            this->_finish = true;
        if (nfas[next]->_loop)
        {
            this->_loop = true;
        }
    }

    char action = NFA_queue.top()->GetMove();
    if (action == '.')
        return;
    NFAState *iter = nullptr;
    DFAState *next = new DFAState{dfas.size()};
    while (!NFA_queue.empty())
    {
        iter = NFA_queue.top();
        if (iter->GetMove() != action)
        {
            auto find_res = dfas.find(next);
            if (find_res == dfas.end())
            {
                dfas.insert(next);
                ptrs.emplace_back(next);
                this->_next.insert({action, dfas.size() - 1});
                for (auto &i : next->_nfa)
                    if (nfas[i]->_loop)
                    {
                        next->SetNext(action, next->_number);
                    }
            }
            else
            {
                this->_next.insert({action, (*find_res)->_number});
                for (auto &i : next->_nfa)
                    if (nfas[i]->_loop)
                    {
                        next->SetNext(action, next->_number);
                    }
            }
            if (action == '.')
                break;
            next = new DFAState{dfas.size()};
            next->_nfa.insert(iter->_next);
            next->_nfa.insert(nfas[iter->_next]->_epsilon_closure.begin(), nfas[iter->_next]->_epsilon_closure.end());
            action = iter->GetMove();
            continue;
        }

        next->_nfa.insert(iter->_next);
        next->_nfa.insert(nfas[iter->_next]->_epsilon_closure.begin(), nfas[iter->_next]->_epsilon_closure.end());
        NFA_queue.pop();
    }
    if (action != '.')
    {
        auto find_res = dfas.find(next);
        if (find_res == dfas.end())
        {
            dfas.insert(next);
            ptrs.emplace_back(next);
            this->_next.insert({action, dfas.size() - 1});
            for (auto &i : next->_nfa)
                if (nfas[i]->_loop)
                {
                    next->SetNext(action, next->_number);
                }
        }
        else
        {
            this->_next.insert({action, (*find_res)->_number});
            for (auto &i : next->_nfa)
                if (nfas[i]->_loop)
                {
                    next->SetNext(action, next->_number);
                }
        }
    }
}

void Transformer::ToDFA()
{
    // begin
    DFAState *iter = new DFAState{0};
    iter->_nfa.insert(0);
    iter->_nfa.insert(this->_nfas[0]->_epsilon_closure.begin(), this->_nfas[0]->_epsilon_closure.end());
    this->_dfas.insert(iter);

    // update
    vector<DFAState *> ptrs;
    ptrs.emplace_back(iter);
    iter->GetState(this->_nfas, this->_dfas, ptrs);

    for (int i = 1; i < ptrs.size(); i++)
    {
        ptrs[i]->GetState(this->_nfas, this->_dfas, ptrs);
    }
}

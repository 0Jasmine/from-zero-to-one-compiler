// @brief Thompson 构造法

#include <string>
#include <vector>
#include <cstdarg>
#include <cstdio>
#include <memory>
#include <iostream>

using std::shared_ptr;
using std::string;
using std::vector;

class RegUnit;

enum class RegOP
{
    ORIGIN,
    EPSILON,
    SINGLE,
    CONCAT,
    ORSET,
    CLOSURE
};

class RegUnit
{
protected:
    friend class EpsilonUnit;
    friend class SingleUnit;
    friend class ConcatUnit;
    friend class OrUnit;
    friend class ClosureUnit;
    shared_ptr<RegUnit> _begin{nullptr};
    shared_ptr<RegUnit> _end{nullptr};
    RegOP _type{RegOP::ORIGIN};
    bool _closure{false};
    bool _branch{false};

public:
    RegUnit() {  _begin = std::make_shared<RegUnit>(true); _end = std::make_shared<RegUnit>(true); }
    RegUnit(bool) noexcept { _begin = _end = nullptr; }
    virtual ~RegUnit() = default;
    virtual void print()
    {
        printf("%p %s -> ", this, "RegUnit");
    }
    virtual RegUnit* next(){ return _end == nullptr ?  nullptr : _end->_end.get(); }
    virtual shared_ptr<RegUnit>& begin(){ return this->_begin;}
    virtual shared_ptr<RegUnit>& end(){ return this->_end;}
    virtual void SetNext(shared_ptr<RegUnit> &unit){ _end->_end = unit; }
};
class EpsilonUnit : public RegUnit
{
public:
    EpsilonUnit() = delete;
    EpsilonUnit(shared_ptr<RegUnit> &unit)
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
    void print() override
    {
        printf("%p %s ", this, "EpsilonUnit");
        RegUnit* finish = this->end().get();
        RegUnit * iter = this->begin().get();
        while(iter != finish)
        {
            iter->print();
            iter = iter->next();
        }
        this->_end->print();
    }
    ~EpsilonUnit() = default;
    virtual RegUnit* next() override{ return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit){  _end->SetNext(unit); }
};

class SingleUnit : public RegUnit
{
protected:
    char _a;

public:
    SingleUnit(const char &a) : _a(a)
    {
        this->_type = RegOP::SINGLE;
        // -o-O
        this->_begin = std::make_shared<RegUnit>();
        this->_end = std::make_shared<RegUnit>();


        this->_begin->SetNext(this->_end);
    }
    void print() override
    {
        printf("%p %s : %c ", this, "SingleUnit", this->_a);
        RegUnit* finish = this->_end.get();
        RegUnit * iter = this->_begin.get();
        while(iter != finish)
        {
            iter->print();
            iter = iter->next();
        }
        this->_end->print();
    }
    ~SingleUnit() = default;
    char GetChar(){ return _a; }
    virtual RegUnit* next() override{ return _end->next();  }
    virtual void SetNext(shared_ptr<RegUnit> &unit){  _end->SetNext(unit); }
};

class ConcatUnit : public RegUnit
{
protected:
public:
    ConcatUnit() = delete;
    ConcatUnit(shared_ptr<RegUnit> &unit)
    {
        this->_type = RegOP::CONCAT;
        this->_begin = std::make_shared<RegUnit>();
        this->_end = std::make_shared<RegUnit>();


        this->_begin->SetNext(unit);
        unit->SetNext(this->_end);
    }
    ConcatUnit(shared_ptr<RegUnit> &unit1, shared_ptr<RegUnit> &unit2)
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
    void append(shared_ptr<RegUnit> &unit)
    {
        auto eps = std::make_shared<RegUnit>();

        
        this->SetNext(unit);
        unit->SetNext(eps);
        _end = eps;
    }
    void print() override
    {
        printf("%p %s ", this, "ConcatUnit");
        RegUnit* finish = this->_end.get();
        RegUnit* next = this->_begin.get();
        while(next!=finish)
        {
            next->print();
            next = next->next();
        }
        this->_end->print();
    }
    ~ConcatUnit() = default;
    virtual RegUnit* next() override{ return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit){  _end->SetNext(unit); }
};

class OrUnit : public RegUnit
{
protected:
    vector<shared_ptr<RegUnit>> ors;
    static int wsc;
public:
    OrUnit() = delete;
    OrUnit(int concat_len, ...)
    {
        this->_type = RegOP::ORSET;
        this->_branch = true;
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
    void add(shared_ptr<RegUnit> &unit)
    {
        unit->SetNext(this->_end);
        ors.emplace_back(shared_ptr<RegUnit>(unit));
    }
    void print() override
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
            if(wsc)
            {
                for(int i=0;i<wsc;i++) printf("\t");
            }
            _or->print();
            printf("\n");
        }
        this->_end->print();
        wsc--;
    }
    ~OrUnit() = default;
    virtual RegUnit *next() override { return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit){  _end->SetNext(unit); }
};

class ClosureUnit : public RegUnit
{
protected:
    static const unsigned infinite = 0xffffffff; 
    unsigned _upcount{0};
    unsigned _downcount{0};
public:
    ClosureUnit() = delete;
    ClosureUnit(shared_ptr<RegUnit> &unit, unsigned downcount = 0, unsigned upcount = infinite)
    {
        this->_type = RegOP::CLOSURE;
        this->_begin = std::make_shared<RegUnit>();
        this->_end = std::make_shared<RegUnit>();
        this->_upcount = upcount;
        this->_downcount = downcount;
        this->_closure = true;


        this->_begin->SetNext(unit);
        unit->SetNext(this->_end);
    }
    void print() override
    {
        printf("%p %s %u~%u times", this, "ClosureUnit", _downcount, _upcount);
        RegUnit* finish = this->_end.get();
        RegUnit * iter = this->_begin.get();
        while(iter != finish)
        {
            iter->print();
            iter = iter->next();
        }
        this->_end->print();
    }
    ~ClosureUnit() = default;
    virtual RegUnit* next() override{ return _end->next(); }
    virtual void SetNext(shared_ptr<RegUnit> &unit){  _end->SetNext(unit); }
};

int OrUnit::wsc = 0;
bool move(RegUnit *state, char action)
{
}

void expandEpsilon(RegUnit *state)
{
}

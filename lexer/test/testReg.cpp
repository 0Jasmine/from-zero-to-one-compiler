#include <memory>
#include <iostream>
#include "../src/regex.h"

void basicTest1()
{
    std::shared_ptr<RegUnit> that1 = std::shared_ptr<RegUnit>(new SingleUnit('a'));
    std::shared_ptr<RegUnit> that2 = std::shared_ptr<RegUnit>(new SingleUnit('b'));
    std::shared_ptr<RegUnit> that3 = std::shared_ptr<RegUnit>(new SingleUnit('c'));
    std::shared_ptr<RegUnit> that4 = std::shared_ptr<RegUnit>(new SingleUnit('d'));
    auto that = std::shared_ptr<RegUnit>(new ConcatUnit(that1,that2));
    ConcatUnit* cc = dynamic_cast<ConcatUnit*>(that.get());
    cc->append(that3);
    that = std::shared_ptr<RegUnit>(new ClosureUnit(that));
    that = std::shared_ptr<RegUnit>(new OrUnit(2, that, that4));
    RegUnit *next = that.get();
    next->print();
}
void basicTest2()
{
    std::shared_ptr<RegUnit> that1 = std::shared_ptr<RegUnit>(new SingleUnit('a'));
    std::shared_ptr<RegUnit> that2 = std::shared_ptr<RegUnit>(new SingleUnit('b'));
    std::shared_ptr<RegUnit> that3 = std::shared_ptr<RegUnit>(new SingleUnit('c'));
    std::shared_ptr<RegUnit> that4 = std::shared_ptr<RegUnit>(new SingleUnit('d'));
    std::shared_ptr<RegUnit> that5 = std::shared_ptr<RegUnit>(new SingleUnit('e'));
    auto that = std::shared_ptr<RegUnit>(new OrUnit(2, that1, that2));
    that = std::shared_ptr<RegUnit>(new ConcatUnit(that, that3));
    that = std::shared_ptr<RegUnit>(new OrUnit(3, that, that4, that5));
    that->print();
}
void basicTest3()
{
    std::shared_ptr<RegUnit> that1 = std::shared_ptr<RegUnit>(new SingleUnit('a'));
    std::shared_ptr<RegUnit> that2 = std::shared_ptr<RegUnit>(new SingleUnit('b'));
    auto that = std::shared_ptr<RegUnit>(new OrUnit(2, that1, that2));
    that->print();
}
void basicTest4()
{
    std::shared_ptr<RegUnit> that1 = std::shared_ptr<RegUnit>(new SingleUnit('g'));
    std::shared_ptr<RegUnit> that2 = std::shared_ptr<RegUnit>(new SingleUnit('h'));
    auto that3 = std::shared_ptr<RegUnit>(new OrUnit(2, that1, that1));
    auto that4 = std::shared_ptr<RegUnit>(new OrUnit(2, that2, that2));
    auto that = std::shared_ptr<RegUnit>(new OrUnit(2, that1, that1));
    that->print();
}
void basicTest5()
{
    std::shared_ptr<RegUnit> that1 = std::shared_ptr<RegUnit>(new SingleUnit('a'));
    std::shared_ptr<RegUnit> that2 = std::shared_ptr<RegUnit>(new SingleUnit('b'));
    std::shared_ptr<RegUnit> that3 = std::shared_ptr<RegUnit>(new SingleUnit('c'));
    auto that4 = std::shared_ptr<RegUnit>(new ConcatUnit(that1));
    ConcatUnit* cc = dynamic_cast<ConcatUnit*>(that4.get());
    cc->print();
    printf("\n\n");
    cc->append(that2);
    cc->append(that3);
    cc->print();
}
void basicTest6()
{
    std::shared_ptr<RegUnit>* that1 = new std::shared_ptr<RegUnit>(new SingleUnit('a'));
    printf("that1 : %p\n" , that1);
    delete that1;
}
int main(int argc, char const *argv[])
{
    basicTest6();
    return 0;
}

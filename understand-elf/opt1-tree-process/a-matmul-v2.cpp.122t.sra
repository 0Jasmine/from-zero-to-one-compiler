
;; Function main (main, funcdef_no=30, decl_uid=6647, cgraph_uid=31, symbol_order=30) (executed once)

int main ()
{
  int j;
  int i;
  unsigned int i.2_1;
  unsigned int _2;
  int * _3;
  int _4;
  int _5;
  unsigned int j.3_6;
  unsigned int _7;
  int * _8;
  int _9;
  int _10;
  int _11;
  unsigned int _12;
  unsigned int _13;
  int * _14;
  int _15;
  void * _30;
  void * _32;
  int * _41;
  int _42;
  int * _44;
  int _45;
  int * _58;
  int _59;
  int * _60;
  int _61;

  <bb 2> [local count: 108459]:
  _30 = operator new [] (40000);

  <bb 3> [local count: 10737416]:
  # _58 = PHI <_44(3), _30(2)>
  # _59 = PHI <_45(3), 9999(2)>
  *_58 = 0;
  _44 = _58 + 4;
  _45 = _59 + -1;
  if (_45 >= 0)
    goto <bb 3>; [99.00%]
  else
    goto <bb 4>; [1.00%]

  <bb 4> [local count: 108459]:
  _32 = operator new [] (400);

  <bb 5> [local count: 10737416]:
  # _60 = PHI <_41(5), _32(4)>
  # _61 = PHI <_42(5), 99(4)>
  *_60 = 0;
  _41 = _60 + 4;
  _42 = _61 + -1;
  if (_42 >= 0)
    goto <bb 5>; [99.00%]
  else
    goto <bb 6>; [1.00%]

  <bb 6> [local count: 108459]:

  <bb 7> [local count: 10737416]:
  # i_62 = PHI <i_36(9), 0(6)>
  i.2_1 = (unsigned int) i_62;
  _2 = i.2_1 * 4;
  _3 = _32 + _2;
  _4 = i_62 % 13;
  *_3 = _4;

  <bb 8> [local count: 1063004409]:
  # j_63 = PHI <j_39(8), 0(7)>
  _5 = i_62 + j_63;
  j.3_6 = (unsigned int) j_63;
  _7 = j.3_6 * 4;
  _8 = _30 + _7;
  _9 = _5 % 20;
  *_8 = _9;
  _10 = i_62 * 100;
  _11 = _10 + j_63;
  _12 = (unsigned int) _11;
  _13 = _12 * 4;
  _14 = _30 + _13;
  _15 = _4 * _9;
  *_14 = _15;
  __printf_chk (1, "%d ", _15);
  j_39 = j_63 + 1;
  if (j_39 <= 99)
    goto <bb 8>; [99.00%]
  else
    goto <bb 9>; [1.00%]

  <bb 9> [local count: 10737416]:
  __printf_chk (1, "\n");
  i_36 = i_62 + 1;
  if (i_36 <= 99)
    goto <bb 7>; [99.00%]
  else
    goto <bb 10>; [1.00%]

  <bb 10> [local count: 108459]:
  if (_30 != 0B)
    goto <bb 11>; [99.96%]
  else
    goto <bb 12>; [0.04%]

  <bb 11> [local count: 108415]:
  operator delete [] (_30);

  <bb 12> [local count: 108459]:
  if (_32 != 0B)
    goto <bb 13>; [99.96%]
  else
    goto <bb 14>; [0.04%]

  <bb 13> [local count: 108415]:
  operator delete [] (_32);

  <bb 14> [local count: 108459]:
  return 0;

}



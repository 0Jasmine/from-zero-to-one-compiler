
;; Function main (main, funcdef_no=0, decl_uid=6383, cgraph_uid=1, symbol_order=0)

int main ()
{
  void * D.6429;
  void * D.6428;
  int j;
  int i;
  int * vect;
  int * matrix;
  int D.6426;
  int D.6396;
  int * D.6395;
  int * D.6394;
  int * retval.1;
  void * D.6393;
  int D.6390;
  int * D.6389;
  int * D.6388;
  int * retval.0;
  void * D.6387;

  D.6428 = operator new [] (4000000);
  D.6387 = D.6428;
  D.6388 = D.6387;
  D.6389 = D.6388;
  D.6390 = 999999;
  goto <D.6402>;
  <D.6401>:
  *D.6389 = 0;
  D.6389 = D.6389 + 4;
  D.6390 = D.6390 + -1;
  <D.6402>:
  if (D.6390 >= 0) goto <D.6401>; else goto <D.6399>;
  <D.6399>:
  retval.0 = D.6388;
  matrix = D.6387;
  D.6429 = operator new [] (4000);
  D.6393 = D.6429;
  D.6394 = D.6393;
  D.6395 = D.6394;
  D.6396 = 999;
  goto <D.6406>;
  <D.6405>:
  *D.6395 = 0;
  D.6395 = D.6395 + 4;
  D.6396 = D.6396 + -1;
  <D.6406>:
  if (D.6396 >= 0) goto <D.6405>; else goto <D.6403>;
  <D.6403>:
  retval.1 = D.6394;
  vect = D.6393;
  i = 0;
  goto <D.6414>;
  <D.6413>:
  i.2_1 = (unsigned int) i;
  _2 = i.2_1 * 4;
  _3 = vect + _2;
  _4 = i % 13;
  *_3 = _4;
  j = 0;
  goto <D.6412>;
  <D.6411>:
  _5 = i + j;
  j.3_6 = (unsigned int) j;
  _7 = j.3_6 * 4;
  _8 = matrix + _7;
  _9 = _5 % 20;
  *_8 = _9;
  i.4_10 = (unsigned int) i;
  _11 = i.4_10 * 4;
  _12 = vect + _11;
  _13 = *_12;
  j.5_14 = (unsigned int) j;
  _15 = j.5_14 * 4;
  _16 = matrix + _15;
  _17 = *_16;
  _18 = i * 1000;
  _19 = j + _18;
  _20 = (unsigned int) _19;
  _21 = _20 * 4;
  _22 = matrix + _21;
  _23 = _13 * _17;
  *_22 = _23;
  _24 = i * 1000;
  _25 = j + _24;
  _26 = (unsigned int) _25;
  _27 = _26 * 4;
  _28 = matrix + _27;
  _29 = *_28;
  printf ("%d ", _29);
  j = j + 1;
  <D.6412>:
  if (j <= 999) goto <D.6411>; else goto <D.6409>;
  <D.6409>:
  __builtin_putchar (10);
  i = i + 1;
  <D.6414>:
  if (i <= 999) goto <D.6413>; else goto <D.6407>;
  <D.6407>:
  if (matrix != 0B) goto <D.6420>; else goto <D.6421>;
  <D.6420>:
  operator delete [] (matrix);
  goto <D.6422>;
  <D.6421>:
  <D.6422>:
  if (vect != 0B) goto <D.6423>; else goto <D.6424>;
  <D.6423>:
  operator delete [] (vect);
  goto <D.6425>;
  <D.6424>:
  <D.6425>:
  D.6426 = 0;
  goto <D.6427>;
  D.6426 = 0;
  goto <D.6427>;
  <D.6427>:
  return D.6426;
}



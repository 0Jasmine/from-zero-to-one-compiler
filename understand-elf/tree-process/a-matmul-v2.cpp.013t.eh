
;; Function main (main, funcdef_no=0, decl_uid=6383, cgraph_uid=1, symbol_order=0)

int main ()
{
  void * D.6413;
  void * D.6412;
  int j;
  int i;
  int * vect;
  int * matrix;
  int D.6410;
  void * D.6390;
  void * D.6387;

  D.6412 = operator new (4);
  D.6387 = D.6412;
  MEM[(int *)D.6387] = 1000000;
  matrix = D.6387;
  D.6413 = operator new (4);
  D.6390 = D.6413;
  MEM[(int *)D.6390] = 1000;
  vect = D.6390;
  i = 0;
  goto <D.6400>;
  <D.6399>:
  i.0_1 = (unsigned int) i;
  _2 = i.0_1 * 4;
  _3 = vect + _2;
  _4 = i % 13;
  *_3 = _4;
  j = 0;
  goto <D.6398>;
  <D.6397>:
  _5 = i + j;
  j.1_6 = (unsigned int) j;
  _7 = j.1_6 * 4;
  _8 = matrix + _7;
  _9 = _5 % 20;
  *_8 = _9;
  i.2_10 = (unsigned int) i;
  _11 = i.2_10 * 4;
  _12 = vect + _11;
  _13 = *_12;
  j.3_14 = (unsigned int) j;
  _15 = j.3_14 * 4;
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
  <D.6398>:
  if (j <= 999) goto <D.6397>; else goto <D.6395>;
  <D.6395>:
  __builtin_putchar (10);
  i = i + 1;
  <D.6400>:
  if (i <= 999) goto <D.6399>; else goto <D.6393>;
  <D.6393>:
  if (matrix != 0B) goto <D.6404>; else goto <D.6405>;
  <D.6404>:
  operator delete [] (matrix);
  goto <D.6406>;
  <D.6405>:
  <D.6406>:
  if (vect != 0B) goto <D.6407>; else goto <D.6408>;
  <D.6407>:
  operator delete [] (vect);
  goto <D.6409>;
  <D.6408>:
  <D.6409>:
  D.6410 = 0;
  goto <D.6411>;
  D.6410 = 0;
  goto <D.6411>;
  <D.6411>:
  return D.6410;
}


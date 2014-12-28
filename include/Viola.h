#ifndef VIOLA_H
#define VIOLA_H

#define GET_MACRO(_1,_2,NAME,...) NAME

#define String(s) $(String, s)
#define Int(i) $(Int, i)
#define Real(r) $(Real, r)
#define Char(c) $(Char, c)
#define Dictionary() new(Dictionary)
#define Map() new(Map)
#define Reference(r) $(Reference, r)
#define FileN(name, perm) new(File, name, perm)
#define FileO(n) $(File, n)
#define File(...) GET_MACRO(__VA_ARGS__, FileN, FileO)
#define Table(k, v) new(Table, k, v)
#define Tree(k, v) new(Tree, k, v)
#define List(...) new(List, __VA_ARGS__)
#define Array(t) new(Array, t)
#define Mutex() new(Mutex)
#define Thread() new(Thread)
#define Pool() new(Pool)

#define function var

#endif

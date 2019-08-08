medio(XS, M) :- somaTotal(XS, S), nelementos(XS, N), M is S/N. 

nelementos([], 0).
nelementos([_|L], S) :- nelementos(L, S2), S is S2+1.

somaTotal([], 0).
somaTotal([X|XS], S) :- somaTotal(XS, S1), S is S1 + X.
gerar(X, X, [X]).
gerar(X, Y, L) :- X1 is X+1, gerar(X1, Y, Z), concatenar([X], Z, L).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
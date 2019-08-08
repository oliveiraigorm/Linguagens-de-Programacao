incrementar([X], [X1]) :- X1 is X+1.
incrementar([X|XS], L) :- X1 is X+1, incrementar(XS, Z), concatenar([X1], Z, L).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
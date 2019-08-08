reverter([],[]).
reverter([X|XS], YS) :- reverter(XS, Z), concatenar(Z, [X], YS).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
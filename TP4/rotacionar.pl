concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionar([], []).
rotacionar([X|XS], L) :- concatenar(XS, [X], L).
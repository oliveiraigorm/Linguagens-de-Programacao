concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionarn(0,L,L).
rotacionarn(1,[X|XS],L):-concatenar(XS,[X],L).
rotacionarn(N, [X|XS], L) :- N2 is N-1, concatenar(XS, [X], L1), rotacionarn(N2, L1, L).
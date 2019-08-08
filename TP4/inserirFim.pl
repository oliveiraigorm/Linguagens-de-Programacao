%inserirFim(X, [], [X]).
%inseriFim(X, [Y|L1], [Y|L2]) :- inserirFim(X, L1, L2).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

inserirFim(X, L1, L2) :- concatenar(L1, [X], L2).
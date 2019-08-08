ordenar([],[]).
ordenar([A],[A]).
ordenar([H|T], Out):-  ordenar(T,Z),  aux(H,Z,Out).

aux(X, [], [X]).
aux(X, [H|T], [X,H|T]):-  X <= H.
aux(X, [H|T], [H|Z]):-  X > H,  aux(X,T,Z).
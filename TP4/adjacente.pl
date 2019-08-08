adjacente(L,M,[L|[M|_]]).
adjacente(X, Y,[_|M]) :- adjacente(X, Y, M).
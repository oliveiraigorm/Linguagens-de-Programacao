maior(XS,M) :- XS = [X|_], encontraMaior(XS, X, M).

encontraMaior([], A, A).
encontraMaior([X|XS], A, M) :- X > A, encontraMaior(XS, X, M).
encontraMaior([X|XS], A, M) :- X =< A, encontraMaior(XS, A, M).



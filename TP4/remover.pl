remover(A, [A], []).
remover(A, [B], [B]):- A \== B.
remover(A, [A|C], CS) :- remover(A,C,CS).
remover(A, [B|C], [B|CS]) :- A \== B, remover(A, C, CS).

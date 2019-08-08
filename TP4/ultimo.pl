ultimo([L], L).
ultimo([_|X], L) :- ultimo(X, L).
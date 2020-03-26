perm([],[]).
perm(L, [H|T]) :- take(L,H,R), perm(R,T).

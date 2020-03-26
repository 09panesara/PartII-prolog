checkLen([],[]).
checkLen([_|T],[_|S]) :- checkLen(T,S).
perm([],[]).
perm(L,[H|T]) :- checkLen(L, [H|T]), take(L,H,R), perm(R,T).

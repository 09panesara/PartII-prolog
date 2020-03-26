checkLen([],[]).
checkLen([_|T],[_|S]) :- checkLen(T,S).
perms([],[]).
perms(L, [H|T]) :- checkLen(L, [H|T]), take(L,H,R), perms(R,T).
eightQueens(R, S) :- perms(R,S), checkDiagonals(S).
take([H|T],H,T).
take([H|T],R,[H|S]) :- take(T,R,S).
checkDiagonals([]).
checkDiagonals([H]).
checkDiagonals([H,I|T]) :- H =\= I, I =\= H-1, I=\= H+1, checkDiagonals([I|T]).

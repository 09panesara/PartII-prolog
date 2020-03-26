reverse([],[]).
reverse([H|T],R) :- reverse(T,S), append(S,H,R).
append([],I,[I]).
append([H|T],I,[H|R]) :- append(T,I,R).

revacc([],acc,acc).
revacc([H|T],acc,R) :- revacc(T,[H|acc],R).

rev_diff([],A-A).
rev_diff([H|T],R1-R2) :- reverse(T,S1-S2), append(S1-S2, [H|H1]-H1, R1-R2).

rev_diff([H|T],S1-H1) :- reverse(T,S1-[H|H1]).



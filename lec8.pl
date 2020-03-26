reverse([],[]).
reverse([H|T],R) :- reverse(T,S), append(S,H,R).
append([],I,[I]).
append([H|T],I,[H|R]) :- append(T,I,R).

revacc([],acc,acc).
revacc([H|T],acc,R) :- revacc(T,[H|acc],S), 

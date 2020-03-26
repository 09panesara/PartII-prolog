append([],I,[I]).
append([H|T],I,[H|L]) :- append(T,I,L).

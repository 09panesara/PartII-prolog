split([],[],[]).
split([H|T],[H|L],R) :- H<5,!, split(T,L,R).
split([H|T],L,[H|R]) :- H>=5, split(T,L,R).



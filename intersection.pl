intersection(_,[],[]).
intersection([],_,[]).
intersection([H1|T1],L,[H1|R]) :- member(H1,L), intersection(T1,L,R).
intersection([_|T1],L,R) :- intersection(T1,L,R).
member(H,[H|T]).

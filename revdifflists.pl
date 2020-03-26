rev([],[]).
rev([H|T],R2) :- rev(T,R1), append(R1,[H],R2).

drev([],A-A).
drev([H|T],S1-S2) :- drev(T,R1-R2), dappend(R1-R2,[H|X]-X,S1-S2) 

drev([],A-A).
drev([H|T],S1-S2) :- drev(T,S1-[H|R2]).

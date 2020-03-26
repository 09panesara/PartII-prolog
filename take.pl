take([H|T],H,T).
take([H|T],R,[H|S]) :- take(T,R,S).

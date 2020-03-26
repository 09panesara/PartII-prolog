% everything(X) succeeds if every x is in X such that a(x) holds
a(ham).
a(eggs).
a(cheese).
a(bread).

% solution 
member(X,[X]).
member(X,[H|T]) :- member(X,T).
everything(A,Found) :- a(X), not(member(X,A)), !, everything(A,[X|Found]).
everything(A,A).

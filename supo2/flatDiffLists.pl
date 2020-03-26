% append(R,S,T) succeeds if T is list S appended onto list R.
append([],L,L).
append([X|T],L,[X|R]) :- append(T,L,R).

% flat(X,Y) succeeds if Y is the flattened version of list X.  
flat([],[]).
flat([H|T],R) :- flat(H,H2), flat(T,T2),!, append(H2,T2,R).
flat([H|R],[H|S]) :- flat(R,S).

% d_flat(X,Y) succeeds if Y is the flattened difference list of prolog list Y).
d_append(A-B,B-C,A-C).
d_flat([],[]-[]).
% H2, T2 = [] so works. append(H1-H2,T1-T2,R-S) fails.
d_flat([H|T],H1-T1) :- d_flat(H,H1-H2), d_flat(T,T1-T2),!.
d_flat([H|R],[H|T1]-T2) :- d_flat(R,T1-T2).



%replace(O,N,R,S) replaces all occurrences of character O in List R with character N
replace(H,N,[H|T],[N|T]).
replace(O,N,[H|T],[H|S]) :- H \= O, replace(O,N,T,S).

% unification occurs between O,N,[H|T],[H|S] and O,N,T,S.

% cut recommended when you want to prevent needless backtracking:
%- when there is only one solution to prevent uneccessary searches e.g. permutation of a list is same solution as original list, 
%-

%textify(L,N,R,S) replaces all occurerences of List L in List R with character N
% Assume L is always of length 3
textify([X,Y,Z],N,[],[]).    
textify([X,Y,Z],N,[X,Y,Z|T],[N|T]).
textify([X,Y,Z], N, [A,B,C|T],[A,B,C|S]) :- textify([X,Y,Z], N, T,S), X \=A, Y \=B, Z \= C.
 


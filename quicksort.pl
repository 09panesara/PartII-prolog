lower(H,[],[]).
lower(H,[R|S],[R|L]) :- lower(H,S,L), R <= H.
lower(H,[R|S],L) :- lower(H,S,L), R > H.
higher(H,[],[]).
higher(H,[R|S],[R|L) :- higher(H,S,L), R > H.
higher(H, [R|S],L) :- higher(H,S,L), R <= H

partition_old(P,L,Left,Right) :- lower(P,L,Left), higher(P,L,Right).
% slow - better to do 
partition2(_,[],[],[]).
partition(P,[H|T],[P|L],R) :- P <= H, partition(P,T,L,R).
partition(P,[H|T},L,[P|R]) :- P > H, partition(P,T,L,R).
quicksort([],[]).
quicksort([H|T], Sorted) :- partition(P,T,L,R), quicksort(L,L1), quicksort(R,R1), append(L1,[P|R1],Sorted).


% Replace append with difference lists 


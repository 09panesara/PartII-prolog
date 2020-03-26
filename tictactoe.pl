move(Position, Player).
contains([H|T],H).
contains([H|T],B) :- contains(T,B).
not(A) :- A,!.
nextMove(Before, Player, [H|Before]) :- move(Position,Player), not(contains(Before, move(Position,Player)). 

pos(Index) :- member(Index,[1,2,3,4,5,6,7,8,9]).
used(I,[move

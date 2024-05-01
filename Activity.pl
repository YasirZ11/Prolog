split_list(L,N,LF,LS):- append(LF,LS,L),length(LF,N).

find_odd(L, N) :-
    bagof(X, (member(X, L), X mod 2 =:= 1), OddNumbers),
    length(OddNumbers, N).

insert_last([],X,[X]).
insert_last([H|T],X,[H|T1]):-insert_last(T,X,T1).

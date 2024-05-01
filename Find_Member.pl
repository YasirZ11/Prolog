find_member(X,[X|_]).
find_member(X,[_|T]):-find_member(X,T).


categorize([], [], [], []).
categorize([X|Xs], [X|Pos], Neg, Zero) :- X > 0, !, categorize(Xs, Pos, Neg, Zero).
categorize([X|Xs], Pos, [X|Neg], Zero) :- X < 0, !, categorize(Xs, Pos, Neg, Zero).
categorize([X|Xs], Pos, Neg, [X|Zero]) :- X =:= 0, categorize(Xs, Pos, Neg, Zero).

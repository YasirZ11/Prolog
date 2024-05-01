studies('Shami','CS 3012').
studies('Clarke','CS 3012').
studies('Jack','CS 3010').
studies('Paul','CS 3010').
studies('Andrew','CS 3011').

teaches('Sharon','CS 3010').
teaches('Bavan','CS 3071').
teaches('Mark','CS 3012').
teaches('Kevin','CS 3011').

professor(X,Y):-teaches(X,C),studies(Y,C).


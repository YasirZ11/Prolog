word(article,a).
word(article,every).
word(noun, 'small animal').
word(noun, 'big bird').
word(verb,eats).
word(verb,likes).

sentence(U,V,W,X,Y):-
    word(article,U),
    word(noun,V),
    word(verb,W),
    word(article,X),
    word(noun,Y),
    V\=Y,
    write(U),write(' '),write(V),write(' '),write(W),write(' '),
    write(X),write(' '),write(Y).








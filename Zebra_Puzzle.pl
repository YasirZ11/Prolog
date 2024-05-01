kid('Ethan').
kid('Anya').
kid('Ali').

superhero('Spiderman').
superhero('Iron Man').
superhero('Captain America').

age('6').
age('8').
age('10').


relation(K,S,A):-K='Anya',S='Spiderman',age(A).
relation(K,S,A):-K='Ethan',superhero(S),age(A),S\='Captain America'.
relation(K,S,A):-kid(K),S='Spiderman',A=('6').
relation(K,S,A):-kid(K),S='Captain America',A=('8').

different(X,Y,Z):-X\=Y,X\=Z,Y\=Z.
solve(K1,S1,A1,K2,S2,A2,K3,S3,A3):- relation(K1,S1,A1),relation(K2,S2,A2),relation(K3,S3,A3),different(K1,K2,K3),different(S1,S2,S3),different(A1,A2,A3).



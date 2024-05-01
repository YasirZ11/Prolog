male(nasimudeen).
male(zulfikar).
male(siraj).
male(yasir).
female(nawaziya).
female(rameeza).
female(nazeera).
female(sumaiya).
female(ayisha).

parent(nasimudeen,siraj).
parent(nasimudeen,rameeza).
parent(nasimudeen,nazeera).
parent(nawaziya,siraj).
parent(nawaziya,rameeza).
parent(nawaziya,nazeera).
parent(zulfikar,yasir).
parent(zulfikar,sumaiya).
parent(zulfikar,ayisha).
parent(rameeza,yasir).
parent(rameeza,sumaiya).
parent(rameeza,ayisha).

father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
husband(X,Y):-parent(X,Z),parent(Y,Z),male(X),female(Y).
wife(X,Y):-parent(X,Z),parent(Y,Z),female(X),male(Y).
daughter(X,Y):-female(X),parent(Y,X).
son(X,Y):-male(X),parent(Y,X).
sister(X,Y):-%(X,Y or Y,X)%
female(X),father(P,X),father(P,Y),X\=Y.
brother(X,Y):-%(X,Y or Y,X)%
male(X),father(P,X),father(P,Y),X\=Y.
siblings(X,Y):-parent(P,X),parent(P,Y),X\=Y.
uncle(X,Y):-parent(P,Y),brother(X,P),male(X).
aunt(X,Y):-parent(P,Y),sister(P,X),female(X).
grandparent(X,Y):-parent(X,P),parent(P,Y).
grandfather(X,Y):-male(X),parent(X,P),parent(P,Y).
grandmother(X,Y):-female(X),parent(X,P),parent(P,Y).





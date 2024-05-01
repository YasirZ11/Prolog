own('Peter','PRIUS').
own('James','VITZ').
own('Anne','KIA').
own('Sam','HYUNDAI').

car('PRIUS',hybrid).
car('HYUNDAI',hybrid).
car('VITZ',subcompact).

hybrid(P):-own(P,X),car(X,hybrid).
subcompact(P):-own(P,X),car(X,subcompact).

male(malan).
male(nimal).
male(seelan).
male(suthan).
male(sunthar).

female(kala).
female(dhilini).
female(vanitha).
female(sheela).

spouse(malan,kala).
spouse(kala,malan).
spouse(nimal,dhilini).
spouse(dhilini,nimal).
spouse(seelan,vanitha).
spouse(vanitha,seelan).

parent(malan,nimal).
parent(kala,nimal).
parent(malan,seelan).
parent(kala,seelan).
parent(nimal,suthan).
parent(dhilini,suthan).
parent(nimal,sunthar).
parent(dhilini,sunthar).
parent(seelan,sheela).
parent(vanitha,sheela).

husband(H):- spouse(H,W),male(H), write(H), write(" is a husband of "),write(W).
wife(W):- spouse(W,_), female(W).

grandparent(GP):-parent(GP,P),parent(P,_),write(GP).


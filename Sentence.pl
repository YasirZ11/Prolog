article('a').
article('every').
noun('criminal').
noun('roti and curry').
verb('eats').
verb('likes').

sentence(A,N,V,A1,N1):- article(A),noun(N),verb(V),article(A1),noun(N1),A\=A1, N\=N1,Write(A),write(' '),write(N),write(' '),write(V),write(' '),write(A1),write(' '),write(N1).

sentence1s:- article(A),noun(N),verb(V),article(A1),noun(N1),A\=A1, N\=N1,Write(A),write(' '),write(N),write(' '),write(V),write(' '),write(A1),write(' '),write(N1).

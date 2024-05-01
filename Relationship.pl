name('Raja').
name('Malini').
name('Sheela').
name('Kajan').

father('Raja','Sheela').
father('Raja','Kajan').


mother('Malini','Kajan').
mother('Malini','Sheela').


sister('Sheela','Kajan').
brother('Kajan','Sheela').

parent(X):- father(X,'Sheela');mother(X,'Sheela').
parent(X,Y):- father(X,Y); mother(X,Y).

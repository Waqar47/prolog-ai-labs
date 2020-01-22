male(ali).
male(mubashir).
male(haris).
female(sana).
female(sara).
parent(mubashir,ali).
parent(sana,ali).
parent(haris,mubashir).
parent(sara,mubashir).

father(X,Y):- parent(X,Y),male(X).
mother(X,Y):- parent(X,Y),female(X).
grand_parent(X,Y):- parent(Z,Y),parent(X,Z).

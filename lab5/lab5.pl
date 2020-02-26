%RECURSION
/*
1)For starting input,output will be known to us (base-condition)

In prolog it is satisfied by the given fact.


2) A prolog function or program must call itself either directly or
indirectly
*/


female(dania).

male(salman).
male(jim).
male(peter).

parent(salman,dania).
parent(peter,jim).
parent(jack,jim).
parent(bob,peter).


gen(X,Z):- parent(X,Z).
gen(X,Z):- parent(X,Y), gen(Y,Z).


%Q1 (lab manual)
f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):- f(X,N).

%answers
/*
?-  f(s(1),A).
A = two.

?- f(s(s(1)),two).
false.

?- f(s(s(s(s(s(s(1)))))),C).
C = one.

?- f(D,three).
D = s(s(1)).


*/

on_route(rome).
on_route(Place):- move(Place,Method,NewPlace),on_route(NewPlace).

move(home,taxi,halifax).
move(halifax,train,gatwick).
move(gatwick,plane,rome).


%q3
translate(Number,Word):-Number=1,Word=one,!.
translate(Number,Word):-Number=2,Word=two,!.
translate(Number,Word):-Number=3,Word=three.


/*

=== LISTS ====

Prolog list is a kind of data strucutre which contains head and tail.
Head is usually a first element of a list

L = [1,3,2,4]
head = 1
tail = 3,2,4

L_L = [[1,2],3,4,5]
head = [1,2]
tail = 3,4,5


L = [4]
head = 4
tail = null

L = []
head = null
tail = null


==== SEPARATING HEAD AND TAIL ====


?- [1,2,3,4] = [H | T]
|    .
H = 1,
T = [2, 3, 4].

?-

?- [1,2,3,4] = [HEAD | TAIL]
|    .
HEAD = 1,
TAIL = [2, 3, 4].


=== FIND LIST ===
A) LENGTH
B) SEARCHING
C) SUM
D) SWAPING
E) CONCATENATION / APPEND (PROLOG KA HAY)
F) REVERSE
G) MAX-ITEM
H) SORT
I) SHIFT N+x
*/













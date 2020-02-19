
/*
 * *** Prolog operators ***
 *
 * X =:= Y (Equal to)
 * X =\= Y (Not equal)
 * X < Y
 * X > Y
 * X =< Y
 * X >= Y
 * X + Y (or +=)
 * X - Y (or -=)
 * X * Y
 * X /= Y (Quotient)
 * X // Y (integer division)
 * X mod Y (remainder)
 * max(X,Y).
 * cos(X).
 * abs(X).
 * sqrt(X).

*/


/*
 Valid Queries

 ?- X is 3 + 3     (X = 3  + 3)
 ?- Y is max(3,5).
 ?- X is cos(9).
 ?- D is sqrt(25).


 */

 /*
 Density formula:

 density = pop / area

 */

pop(china,100).
area(china,10).
pop(pak,200).
area(pak,20).


density(X,Y):- pop(X,C),area(X,Z),Y is C//Z.



/*
Questions:

a)If X is less than 3 then Y is equal to 0
b) If 3 is less than equal to X and X is less than 6 than Y is equal to
c) If 6 is less than equal to X then Y is equal to 4


*/
%a)
input(X,Y):- X < 3,Y is 0,!.

%b)
input(X,Y):- 3 =< X, X < 6,Y is 2,!.

%c)
input(X,Y):- 6 =< X,Y is 4.




/*Questions

max(X,Y,Max)
Where
max is X if X >= Y OR
max is Y if X < Y


*/

%solutions

maximum(X,Y,Max):- X >= Y,Max is X;X < Y,Max is Y.
max(X,Y,X):- X >= Y.

%max(X,Y,Y).
/*
 * stop backtracking cut(!)

 maximum(X,Y,Max):- X >= Y,Max is X,!;X < Y,Max is Y.

max(X,Y,Z):- X >= Y, Z is X,!.

*/








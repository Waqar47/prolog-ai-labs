/*all human are mortal*/


human(abc).


mortal(X):- human(X).


%an item is fun if the item is red and it is a car OR
%an item is fun if the item is bike and it is blue
%and icecream is also fun

red(toyota).
red(koibike).
car(toyota).

blue(icecream).
bike(honda).

icecream(cup).

/*blue(yamaha).
bike(yamaha).*/

fun(X):- red(X),car(X);bike(X),blue(X),icecream(X).


/*john likes marry because john likes to do garderning
 * and marry likes to do garderning specifically.*/

/*For all X and Y if X likes Y if a hobby of X == Y,hobby can be anything*/


hobby(john,garderning).
hobby(marry,garderning).

likes(X,Y):- hobby(X,Z),hobby(Y,Z).






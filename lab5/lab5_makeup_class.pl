/*

Constant
-->numbers
-->atoms

--->Type1 (letter + special chars i.e :=,:-,)
--->Type2 (letters+integer)

Integers
|
|--> (-16383 to 16383 (16bit))

Structure(compound of multiple objects)
--> def (collection of objects known as strucutre)
--> usage(less code reptition,less ambiguity)



[Structure Name] == Functor in prolog language & input as Arguments
date(dd,mm,yyyy) <-- date is Functor & input as Arguments


*/


owns(john,book(abcbook,author(xyz,abc))).
owns(marry,book(dcBook,author(zaryan,xxs))).



/*
?owns(john,book(abcbook,author(X,Y),Z))


*/


%single entities shouldn't defined as strucutre
course(103783,day(saturday,time(8:40,am,10:15,am)),course(137311,instructor(zaryab))).


/*
X = code
Y = teacher
*/

%Find instructor only
find_instructor(X,Y):- course(X,_,course(_,instructor(Y))).



%Find instructor with structure
find_inst_struct(X,Y):- course(X,_,Y).




/*
 *
 *               ===PROLOG MATCHING===
 *
Question) if S and T are constant S = T match are as follows


i) if S and T both are constant S=T if both are same objects.
ii) if S is a variable and T is anything T = S (viceversa)

iii)if S and T are structures S and T should have same functor name. All
their corresponding arguments & compoenents are have to equal & matched.
*/


% ==QUERIES==

%? date(1,may,2018)=date(Day,may,2018). Outputs Day=1
/*? date(D1,M,1983)=date(D,may,Y1). Outputs

D1=D.
M=may.
Y1=1983.
*/

/*

1 ?- date(D,M,1983) = date(D1,may,Y1), date(D,M,1983) = date(15,M,Y).
D = D1, D1 = 15,
M = may,
Y1 = Y, Y = 1983.

*/













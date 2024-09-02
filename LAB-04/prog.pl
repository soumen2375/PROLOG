/* p -> b, t ->b, t ->l, b ->a, b ->q, q ->j 
p, a, q, l -> female,  b, t, j -> male
*/


female(p).
female(a).
female(q).
female(l).

male(b).
male(t).
male(j).

parent(p, b).
parent(t, b).
parent(t, l).
parent(b, a).
parent(b, q).
parent(q, j).


father(X, Y):- parent(X, Y), male(X).
mother(X, Y):- parent(X, Y), female(X).
brother(X, Y):- parent(Z, X), parent(Z, Y), male(X),X\==Y.
sister(X, Y):- parent(Z, X), parent(Z, Y), female(X), X\==Y.





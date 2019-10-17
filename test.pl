
rev([],L,L):- !.

rev([X|Y],L,Z):-rev(Y,L,[X|Z]).

palin(X):- rev(X,X,[]).

flat(X,[X]):- \+is_list(X).
flat([],[]).
flat([X|Y],Z):- flat(X,A),flat(Y,B),append(A,B,Z).

isprime(2):-!.
isprime(3):-!.
isprime(X):- X>3,X mod 2 =\= 0,\+ hfactor(X,3).

hfactor(X,L):- X mod L =:= 0.
hfactor(X,L):- L < X/2, P is L+2, hfactor(X,P). 

check(P,L,L):- \+isprime(P).
check(P,L,[P|L]):- isprime(P).

pl([]).
pl([X|List]) :-write(X),write(:),pl(List).

pfactors(X,R,P,R):- X1 is X+1,P > X1,!.
pfactors(X,L,P,R):- X1 is X+1,P < X1,write(P),write( : ),write(passed1),write(R),X mod P =:=0,write(passed1),nl,isprime(P),P1 is P+1,pfactors(X,L,P1,[P|R]).
pfactors(X,L,P,R):- X1 is X+1,P < X1,write(passed2),X mod P =\=0,write(passed2),write(R),nl,P1 is P+1,pfactors(X,L,P1,R).
pfactors(X,L,P,R):- X1 is X+1,P < X1,write(passed3),X mod P =:=0,write(passed3),write(R),nl,\+isprime(P),P1 is P+1,pfactors(X,L,P1,R).

takeout(X,[X|R],R).  
takeout(X,[F |R],[F|S]) :- takeout(X,R,S).

perm([],[]).
perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).  


range(X,X,[X]).
range(X,Y,[X|S]):- X<Y,K is X+1,range(K,Y,S).

nqueens(N,Qs):-range(1,N,Rs),perm(Rs,Qs),test(Qs).

test(Qs):- test(1,Qs,[],[]).

test(_,[],_,_).
test(X,[Y|Ys],Cs,Ds):- C is X-Y,\+member(C,Cs),D is X+Y,\+member(D,Ds),Xs is X+1,test(Xs,Ys,[C|Cs],[D|Ds]).

%nqueens(8,Z).
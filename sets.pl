union([X|Xs],Y,Z,W):- \+member(X,Z),union(Xs,Y,[X|Z],W).
union([X|Xs],Y,Z,W):- member(X,Z),union(Xs,Y,Z,W).
union([],[Y|Ys],Z,W):- \+member(Y,Z),union([],Ys,[Y|Z],W).
union([],[Y|Ys],Z,W):- member(Y,Z),union([],Ys,Z,W).
union([],[],Z,Z).


intersect([X|Xs],Y,W,Z):- member(X,Y),intersect(Xs,Y,[X|W],Z).
intersect([X|Xs],Y,W,Z):- \+member(X,Y),intersect(Xs,Y,W,Z).
intersect([],Y,Z,Z).

max([X|Xs],J,M):- X>J,max(Xs,X,M).
max([X|Xs],J,M):- X=<J,max(Xs,J,M).
max([],J,J).

min([X|Xs],J,M):- X<J,min(Xs,X,M).
min([X|Xs],J,M):- X>=J,min(Xs,J,M).
min([],J,J).

comp(A,A,X,Z,Z).
comp(A,B,X,Z,M):- \+member(A,X),P is A-1,comp(P,B,X,[A|Z],M).
comp(A,B,X,Z,M):- member(A,X),P is A-1,comp(P,B,X,Z,M).


complement([Z|Zs],M):-max([Z|Zs],Z,A),min([Z|Zs],Z,B),comp(A,B,[Z|Zs],[],H),write(H).


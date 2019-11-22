different(yellow,blue).
different(blue,yellow).
different(yellow,red).
different(red,yellow).
different(blue,red).
different(red,blue).

       
coloring(A,B,C,D,E,F) :-different(A,B),different(A,C),
different(A,D),
different(A,F),
different(B,C),
different(B,E),
different(C,D),
different(C,E),
different(D,E),
different(E,F).




vertex(1).
vertex(2).
vertex(3).
vertex(4).

color(1).
color(2).
color(3).

edge(1,2).
edge(1,3).
edge(1,4).
edge(2,4).
edge(3,4).

getelement(1,[Z|_],Z).
getelement(X,[Z|Zs],M):-K is X-1,getelement(K,Zs,M).

check(Z):-edge(X,Y),getelement(X,Z,M),getelement(Y,Z,N),M=:=N.

getcolor(1,red).
getcolor(2,blue).
getcolor(3,green).


print(A,B,C,D):-getcolor(A,X),getcolor(B,Y),getcolor(C,W),getcolor(D,Z),write([X,Y,W,Z]).
colorit([A,B,C,D]):-color(A),color(B),color(C),color(D),\+check([A,B,C,D]),print(A,B,C,D).

%colorit(Z).
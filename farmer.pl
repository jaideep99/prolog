
conflict(F,W,C,R):-W=:=C,F=\=W,F=\=C.
conflict(F,W,C,R):-C=:=R,F=\=R,F=\=C.

move(1,0).
move(0,1).

change(F,[A,B,C],[As,B,C]):-F=:=A,move(A,As).
change(F,[A,B,C],[A,Bs,C]):-F=:=B,move(B,Bs).
change(F,[A,B,C],[A,B,Cs]):-F=:=C,move(C,Cs).


%member(X,[X|_]).

%member(X,[_|Ys]):-member(X,Ys).


path(F,W,C,R,Z):-F=:=1,W=:=1,C=:=1,R=:=1,write('DONE!'),!.
path(F,W,C,R,Z):- move(F,Fs),change(F,[W,C,R],[Ws,Cs,Rs]),\+conflict(Fs,Ws,Cs,Rs),\+member((Fs,Ws,Cs,Rs),Z),write([Fs,Ws,Cs,Rs]),nl,path(Fs,Ws,Cs,Rs,[(Fs,Ws,Cs,Rs)|Z]).
path(F,W,C,R,Z):- move(F,Fs),\+conflict(Fs,W,C,R),\+member((Fs,W,C,R),Z),write([Fs,W,C,R]),nl,path(Fs,W,C,R,[(Fs,W,C,R)|Z]).


%path(0,0,0,0,[(0,0,0,0)]).
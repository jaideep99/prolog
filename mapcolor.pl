
coloring(Cs):-
        Cs = [A,B,C,D,E,F],
        maplist(#\=(A),[B,C,D,E]),
        maplist(#\=(B),[C,D,F]),
        maplist(#\=(C),[D]),
        maplist(#\=(D),[E,F]),
        maplist(#\=(E),[F]).

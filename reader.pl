test(0):-!.
test(N) :- repeat,
            write(N),
            N is N-1,
             (N=0;test(0)),!.
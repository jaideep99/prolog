start :-
write('Enter a number followed by a fullstop: '),
read(Number),
Cube is Number * Number * Number,
write('Cube of the Number: '),
write(Cube).


browse :-
seeing(Old),
see(user),
write('Enter name of file to browse: '),
read(File),
see(File),
repeat,
read(Data),
process(Data),
seen,
see(Old),
!.


process(end_of_file) :- !.
process(Data) :- assert(Data),nl,fail.

mySave:-
    write('Enter the name of the file to be written to: '),
    read(File),
    telling(Old),
    tell(File),
    listing,
    told,
    tell(Old).

main:-open('abc.txt',read,Str),
         read(Str,House1),
         read(Str,House2),
         read(Str,House3),
         read(Str,House4),
         close(Str),
         write([House1,House2,House3,House4]),nl.
start :- move(0, 0, [(0, 0)]).

move(2, 0, _) :- write('done'), !.
move(X, Y, Visited) :-
    ( Action = [(4, Y), 'fill 4 jug'];
      Action = [(X, 3), 'fill 3 jug'];
      Action = [(0, Y), 'pour 4 jug'];
      Action = [(X, 0), 'pour 3 jug'];
      P is X + Y, P >= 4, Y > 0, K is 4 - X, M is Y - K, Action = [(4, M), 'pour 3 -> 4'];
      P is X + Y, P >= 3, X > 0, K is 3 - Y, M is X - K, Action = [(M, 3), 'pour 4 -> 3'];
      K is X + Y, K < 4, Y > 0, Action = [(K, 0), 'pour 3 -> 4'];
      K is X + Y, K < 3, X > 0, Action = [(0, K), 'pour 4 -> 3']
    ),
    Action = [(NX, NY), Msg], \+ member((NX, NY), Visited),
    write(Msg), nl,
    move(NX, NY, [(NX, NY)|Visited]).

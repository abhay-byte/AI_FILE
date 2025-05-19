win(b, p) :- rowwin(b, p).
win(b, p) :- colwin(b, p).
win(b, p) :- diagwin(b, p).

rowwin(b, p) :- b = [p,p,p,_,_,_,_,_,_].
rowwin(b, p) :- b = [_,_,_,p,p,p,_,_,_].
rowwin(b, p) :- b = [_,_,_,_,_,_,p,p,p].

colwin(b, p) :- b = [p,_,_,p,_,_,p,_,_].
colwin(b, p) :- b = [_,p,_,_,p,_,_,p,_].
colwin(b, p) :- b = [_,_,p,_,_,p,_,_,p].

diagwin(b, p) :- b = [p,_,_,_,p,_,_,_,p].
diagwin(b, p) :- b = [_,_,p,_,p,_,p,_,_].

other(x,o).
other(o,x).

game(b, p) :- win(b, p), !, write([p, p, wins]).
game(b, p) :- 
  other(p,Otherp), 
  move(b,p,Newb),
  !,
  display(Newb),
  game(Newb,Otherp).

move([b,B,C,D,E,F,G,H,I], p, [p,B,C,D,E,F,G,H,I]).
move([A,b,C,D,E,F,G,H,I], p, [A,p,C,D,E,F,G,H,I]).
move([A,B,b,D,E,F,G,H,I], p, [A,B,p,D,E,F,G,H,I]).
move([A,B,C,b,E,F,G,H,I], p, [A,B,C,p,E,F,G,H,I]).
move([A,B,C,D,b,F,G,H,I], p, [A,B,C,D,p,F,G,H,I]).
move([A,B,C,D,E,b,G,H,I], p, [A,B,C,D,E,p,G,H,I]).
move([A,B,C,D,E,F,b,H,I], p, [A,B,C,D,E,F,p,H,I]).
move([A,B,C,D,E,F,G,b,I], p, [A,B,C,D,E,F,G,p,I]).
move([A,B,C,D,E,F,G,H,b], p, [A,B,C,D,E,F,G,H,p]).

display([A,B,C,D,E,F,G,H,I]) :- write([A,B,C]),nl,write([D,E,F]),nl,
 write([G,H,I]),nl,nl.

selfgame :- game([b,b,b,b,b,b,b,b,b],x).

x_can_win_in_one(b) :- move(b, x, Newb), win(Newb, x).

orespond(b,Newb) :- 
  move(b, o, Newb),
  win(Newb, o),
  !.
orespond(b,Newb) :-
  move(b, o, Newb), 
  not(x_can_win_in_one(Newb)).
orespond(b,Newb) :-
  move(b, o, Newb).
orespond(b,Newb) :-
  not(member(b,b)),
  !, 
  write('Cats game!'), nl,
  Newb = b.

xmove([b,B,C,D,E,F,G,H,I], 1, [x,B,C,D,E,F,G,H,I]).
xmove([A,b,C,D,E,F,G,H,I], 2, [A,x,C,D,E,F,G,H,I]).
xmove([A,B,b,D,E,F,G,H,I], 3, [A,B,x,D,E,F,G,H,I]).
xmove([A,B,C,b,E,F,G,H,I], 4, [A,B,C,x,E,F,G,H,I]).
xmove([A,B,C,D,b,F,G,H,I], 5, [A,B,C,D,x,F,G,H,I]).
xmove([A,B,C,D,E,b,G,H,I], 6, [A,B,C,D,E,x,G,H,I]).
xmove([A,B,C,D,E,F,b,H,I], 7, [A,B,C,D,E,F,x,H,I]).
xmove([A,B,C,D,E,F,G,b,I], 8, [A,B,C,D,E,F,G,x,I]).
xmove([A,B,C,D,E,F,G,H,b], 9, [A,B,C,D,E,F,G,H,x]).
xmove(b, _, b) :- write('Illegal move.'), nl.

playo :- explain, playfrom([b,b,b,b,b,b,b,b,b]).

explain :-
  write('You play X by entering integer positions followed by a period.'),
  nl,
  display([1,2,3,4,5,6,7,8,9]).

playfrom(b) :- win(b, x), write('You win!').
playfrom(b) :- win(b, o), write('I win!').
playfrom(b) :- read(N),
  xmove(b, N, Newb), 
  display(Newb),
  orespond(Newb, Newnewb), 
  display(Newnewb),
  playfrom(Newnewb).
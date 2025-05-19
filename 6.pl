% filepath: f:\My FIles\College Prep\Third Year\Semester VI\AI\LAB\6.pl
% Write a program to implement Depth First Search Traversal.
%input:-  start_dfs(a).
% ...existing code...
edge(a, b). 
edge(b, c). 
edge(c, d).
edge(d, a).
edge(b, e).

show_edges :-
    write('Edges of the graph:'), nl,
    edge(X, Y), 
    write(X), write(' -> '), write(Y), nl, 
    fail.
show_edges.

show_neighbors(Node) :-
    write('Neighbors of '), write(Node), write(':'), nl, 
    edge(Node, Neighbor), 
    write(Neighbor), nl, 
    fail.
show_neighbors(_).

show_graph :-
    show_edges, nl, 
    show_neighbors(a), 
    show_neighbors(b), 
    show_neighbors(c), 
    show_neighbors(d).

dfs(Node, Visited) :-
    write('Visiting node: '), write(Node), nl, 
    edge(Node, Neighbor), 
    not(member(Neighbor, Visited)), 
    dfs(Neighbor, [Node | Visited]).
dfs(_, _).

start_dfs(Node) :-
    write('Start DFS from node: '), write(Node), nl,
    dfs(Node, []).
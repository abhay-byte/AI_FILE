% filepath: f:\My FIles\College Prep\Third Year\Semester VI\AI\LAB\6.pl
% Write a program to implement Depth First Search Traversal.
%input:-  start_dfs(a).
% ...existing code...
edge(a, b). 
edge(b, c). 
edge(c, d).
edge(d, a).
edge(b, e).

dfs(Node, Visited) :-
    write('Visiting node: '), write(Node), nl, 
    edge(Node, Neighbor), 
    not(member(Neighbor, Visited)), 
    dfs(Neighbor, [Node | Visited]).
dfs(_, _).

start_dfs(Node) :-
    write('Start DFS from node: '), write(Node), nl,
    dfs(Node, []).
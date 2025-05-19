% Check whether a number is even or odd
even(Number) :-
    Number mod 2 =:= 0.

odd(Number) :-
    Number mod 2 =\= 0.

% Find the maximum of two numbers
max(X, Y, X) :-
    X >= Y.
max(X, Y, Y) :-
    Y > X.

% Find grades of students based on marks achieved
grade(Marks, 'A Grade') :-
    Marks >= 90.
grade(Marks, 'B Grade') :-
    Marks >= 75,
    Marks < 90.
grade(Marks, 'C Grade') :-
    Marks >= 50,
    Marks < 75.
grade(Marks, 'Fail') :-
    Marks < 50.

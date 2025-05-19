% Calculate the square of a number
square(Number, Result) :-
    Result is Number * Number.

% Calculate the area of a circle
area_circle(Radius, Area) :-
    Area is 3.14159 * Radius * Radius.

% Calculate the area of a square
area_square(Side, Area) :-
    Area is Side * Side.

% Calculate the area of a rectangle
area_rectangle(Length, Width, Area) :-
    Area is Length * Width.

% Calculate the simple interest
simple_interest(Principal, Rate, Time, Interest) :-
    Interest is (Principal * Rate * Time) / 100.

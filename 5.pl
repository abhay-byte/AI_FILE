%Write predicates, one converts centigrade temperatures to Fahrenheit, the other checksif a temperature is  below freezing using PROLOG. 
% Convert Centigrade to Fahrenheit
c_to_f(C, F) :-
    F is (C * 9 / 5) + 32.

% Check if temperature is below freezing
below_freezing(C) :-
    C < 0.
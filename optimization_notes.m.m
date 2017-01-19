%fzero finds the zero closest to the initial guess

% if you set a bracket and the zero doesn't fall between the brackets, it will
% return a zero 
%{
title('Figure 22.1: Humps Function');
format loong
x = fzero(H_humps, 1.3)
humps(x) 
H-Humps(x) 
[x, value] = fzero(H_humps, -0.2)
value

options = optimset('Display', 'iter' ); 
(x, value) = fzero(H-humps, [-2 0], options)

value 

options = optimset('Display', 'final' ); 
(x, value) = fzero(H-humps, [-2 0], options)

%}

C= [ 1 4 4 ]
roots(C)




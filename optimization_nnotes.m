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
%{
c = [ 1 4 4 ]
roots(c)
%}


%bisec_g( % with graphics 
%bisec_n('funex2',0.8,1.0) % without graphics
% have to mmake bisec scheme 
%{
Newton iteration method
choose a point; find a tangent line at that point and extend it until it 
crosses the x axis, then, from there, you go down from the x axis to the 
corresponding y value of the function at that point, then it extends 
a tangent line until it hits the function agian 

xn = x(n-1) - f(xn-1)/f'(xn-1)

%}






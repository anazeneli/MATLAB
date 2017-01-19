% Ana Zeneli
% 7/20/16
% This program finds the roots of a continuous function using the bisection method.

x= 0:0.0001:3;
p= [1 0 -2 -5 ]; 
y= polyval(p,x);
%plot(x,y,[0,3],[0,0]);

x= 3*rand; 
if y~= 0 
    xr=x;
    xl= -3*rand;
    while polyval(p, xl)* polyval(p, xr) > 0
        xl= 3*rand; 
    end
end
xm = 0.5* (xl + xr); 
while abs(polyval(p, xl))- abs(polyval(p, xr)) > 0
        if polyval(p, xl)* polyval(p, xr) < 0
            xl = xm ; 
        else 
            xr = xm ; 
        end
        xm = (xl + xr ) /2;
    
end

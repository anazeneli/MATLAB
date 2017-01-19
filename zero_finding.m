% Ana Zeneli
% 7/20/16
% This program finds the roots of a continuous function using the bisection method.
range = 3; 
x = -range:0.0001:range;
p = [1 0 -2 -5 ]; 
y = polyval(p,x);
plot(x,y,[-range, range],[0,0])

x= 3 * rand;
if y ~= 0 
    if y > 0 
        xr = x;
        xl = range*rand;
        while polyval(p,xl) * polyval(p,xr) >0
            xl = range * rand;
        end
    else
        xl = x;
        xr = 3 * rand;
        while polyval(p,xl)*polyval(p,xr) >0
            xr = range * rand;
        end
    end
    if polyval(p,xl) > polyval(p,xr)
       temp = xl;
       xl = xr;
       xr = temp;
    end
else 
    disp(sprintf('%3.10f', x));
end

xm = ( xl +xr )/2;
while abs(polyval(p,xm)) > 10^-8
    if polyval(p,xm)< 0 
        xl = xm;
    else
        xr = xm;
    end
    xm = (xl + xr) /2 ; 
end
disp(sprintf('%3.10f', xm));
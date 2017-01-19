x= -2:0.0001:3;
p= [1 0 0]; 
y= polyval(p,x);
plot(x,y,[1, 3] , [0,0]);
disp('worked')
x= 0;

if y~=0
    while abs(polyval(p, xl))- abs(polyval(p, xr)) > 0
        xm = 0.5* (xl + xr); 
        if polyval(p, xm) < 0 
            xl = xm;
        else
            if polyval(p, xm) > 0
                xr= xm; 
            else 
                if polyval(p, xm) == 0 
                    disp (xm);
                end
            end
        end
    end
end

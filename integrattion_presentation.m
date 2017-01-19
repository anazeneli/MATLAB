Simps_n('func', 1, 5, 4)

ans =

   45.3333
   
 x = 0:12;
y = tan(pi*x / 25);
xi = linspace(0, 12);
yi = spline(x, y, xi);
plot (x, y, 'o', xi, yi);
pp= spline(x,y)         %% pp form can support piecewise functions 
                        %%of any size


pp = 

      form: 'pp'
    breaks: [0 1 2 3 4 5 6 7 8 9 10 11 12]
     coefs: [12x4 double]
    pieces: 12
     order: 4
       dim: 1
  
   yi = ppval(pp, xi);
   
xi2= linspace(10,12);
yi2= ppval(pp, xi2);
plot(x,y, 'o', xi2, yi2)
xi3 = 10:15; 
yi3 = ppval(pp, xi3); 
plot(x, y, 'x', xi3, yi3) 
yi4= ppval(xi3, pp)
yi4= ppval(xi3, pp);

% Homework 12 
% This assignment plots cubic splines at 8 points in order to 
% approximate the polynomial fit of this function
% 
figure
%{
    x= 1:8 
    y=10*rand(1,8);

    u= 1:0.1:8; 
    v= spline(x,y,u);
    plot(x,y,'*', u,v )
%}
% Cubic Spline 

x= 1:8 
y=10*rand(1,8); 
plot(x,y,'kx');
hold on
xlim([0 10 ]); 
ylim([ -3 12]);
title('Cubic Spline Approximation Curve');

cubic = zeros(38,29) ; 

for i= 1:6
    col_inc= 1 + (i-1)*4;
    row_inc= 1 + (i-1)*6; 
    cubic(row_inc: row_inc+5, col_inc:col_inc+7) = [                                                           % so beginning matrix two on row 7 
                         i^3 i^2 i 1 0 0 0 0 
                        (i+1)^3 (i+1)^2 (i+1) 1 0 0 0 0 
                         3*(i+1)^2 2*(i+1) 1 0 -3*(i+1)^2 -2*(i+1) -1 0     % equal first derivative
                         6*(i+1) 2 0 0 -6*(i+1) -2 0 0                      % equal second derivative
                         0 0 0 0  (i+1)^3 (i+1)^2 (i+1) 1
                         0 0 0 0  (i+2)^3 (i+2)^2 (i+2) 1 
                        ]
    cubic( row_inc:row_inc+5, 29) =[  
                         y(1,i) 
                         y(1, i+1) 
                         0
                         0
                         y(1, i+1) 
                         y(1, i+2)
                        ];
end
    cubic(37, 1:8) = [ 6 2 0 0 0 0 0 0  ];         % second derivative at first 
    cubic (38, 21:28) = [ 0 0 0 0 48 2 0 0 ];     % and last endpoint is zero
    coef= rref(cubic);
for j=1:7 
	inc= 1 + (j-1)*4;
	p = [coef(inc, 29), coef(inc+1, 29) , coef(inc+2, 29) , coef(inc+3, 29)]; % 4 coefficients because a third degree polynomial
	xj= j:0.01:j+1;
	sol= polyval(p,xj);
 	plot(xj,sol, 'b');
end
    
        
% Interpolation polynomial

% Define the sample points, x, and corresponding sample values, y

x= 1:5; 
y= [ 1 4 4 2 3 ] ; 
x1= 1 :0.2 : 5;    


% Define the query points to be a finer 
% sampling over the range of x. 

x1 = 0:pi/16:2*pi;
% Interpolate the function at the query 
% points and plot the result. 

y1 = interp1(x, y, x1); % we interpolate the values of y based on the 
%asample points
plot(x,y,'o',x1,y1,'r:.');
xlim([0 2*pi]);
title('(Default) Linear Interpolation');

pause
y1 = interp1(x, y, x1, 'spline');
plot(x,y,'o',x1,y1,'r:.');
xlim([0 2*pi]);
xlabel('x'), ylabel('sin(x)')
title('Spline interpolation')

pause
y1 = interp1(x, y, x1, 'cubic');
plot(x,y,'o',x1,y1,'r:.');
xlim([0 2*pi]);
xlabel('x'), ylabel('sin(x)')
title('Spline interpolation')

pause
y1 = interp1(x, y, x1, 'linear');
plot(x,y,'o',x1,y1,'r:.');
xlim([0 2*pi]);
xlabel('x'), ylabel('sin(x)')
title('Spline interpolation')



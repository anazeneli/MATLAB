x = linspace (-5, 3, 100); 
y = func10(x); 
z = cumtrapz(x,y);
plot(x,y,x,z, '--');
grid on 
title('Cumulative Integral of humps(x)');


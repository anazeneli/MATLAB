% hw11.m
%n= 49; x= -3; x2 = 8; use trapz and quad for part 2
format long
x= linspace(-3, 8, 49);
y= func10(x);
f= @func10;
area_q= quad(f, -3, 8);
area_ql= quadl(f, -3, 8);
area_qgk= quadgk(f, -3, 8);
area_q
area_ql
area_qgk
area_t= trapz(x,y)

%Part 3 
pause  
figure;
x= linspace(-5, 3, 100);
y= func10(x);
z= cumtrapz(x,y);
plot(x,y,x,z,'--');
grid on;
title('Cumulative Integral equations')

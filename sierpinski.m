% Ana Zeneli
% Homework 5
% sierpinski.m
% 7.25.16

a=[ 0 0.5 1]; 
b=[ 0  1  0]; 
fill(a,b,[0.6 0.9 0.5]) 

x=rand; y=rand;
if x<= 0.5                  % within the triangle
	while y>= 2*x
        y=rand;
    end
end
if x> 0.5
    while y> 2*(1-x)
        y=rand;
    end
end
text('interpreter','latex','string','$$\cdot$$','position',...
    [x y],'fontsize', 100,'color','b')
for n= 1: 100
    p= ceil(3*rand);
    switch p
        case 1
            x1= a(1); y1 = b(1);
        case 2
            x1= a(2); y1= b(2);
        case 3
            x1= a(3); y1= b(3); 
    end
    x2 = 0.5*(x+x1); y2= 0.5*(y+y1); 
    text('interpreter','latex','string','$$\cdot$$','position',...
    [x2 y2],'fontsize', 30,'color','k')
    x= x2; y=y2;
    ++n; 
end   

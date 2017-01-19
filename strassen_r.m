function [ c ] = strassen_r( n )
% strassen's algorithm to recursively compute the product of subarrays
a= round(10*rand(n,n));
ans= log2(n);
if ans ~= round(ans)                
   f= 2^nextpow2(n) - n ;
   padarray(a, [f,f], 'post')
end

%{
p1= a *( f - h )
p2= ( a + b )* h 
p3= ( c + d ) * e
p4= d * ( g - e )
p5= ( a + d ) * ( e + h ) 
p6= ( b - d ) * ( g + h ) 
p7= ( a - c ) * ( e + f ) 

r= p5 + p4 + p6 - p2
s= p1 + p2 
t = p3 + p4 
u = p5 + p1 - p3 - p7
end
%}

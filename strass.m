function c = strass(a,b)
% This function recursively multiplies matrices using the 
% Strassen Alogrithm
n= length(a);
if n == 2
    c = a*b; 
else
   m = n/2; u = 1:m ; v = m+1:n ;
   p1 = strass(a(u,u)+a(v,v),b(u,u)+b(v,v));
   p2 = strass(a(v,u)+a(v,v),b(u,u));
   p3 = strass(a(u,u),b(u,v)-b(v,v));
   p4 = strass(a(v,v),b(v,u)-b(u,u));
   p5 = strass(a(u,u)+a(u,v),b(v,v));
   p6 = strass(a(v,u)-a(u,u),b(u,u)+b(u,v));
   p7 = strass(a(u,v)-a(v,v),b(v,u)+b(v,v));
   c = [p1+p4-p5+p7, p3+p5; p2+p4, p1-p2+p3+p6];
end
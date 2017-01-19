function [ term ] = exp_f( x,n )
% This function calculates e ^ n 

prev=1;
sum=1;
for k= 0:n
    term= prev*x/(k+1);
    prev=term;
    sum=sum+term;
end
term=sum;
end
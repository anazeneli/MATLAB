function t = exp_nested( x,n )
%   Tn(x) = exp_nested( x,n )
%   exp_nested.m
%   Provides the taylor-series approximation of e^x
%   as proved by the sum from k=0 to n of x^k/n!
    function [y]=power(x,k)
    %   calculates the power of x^k recursively
        if k==0;
            y= 1;
        else
            y= x*power(x,k-1);
        end
    end    
    function [ f ] = factorial_r( k )
    %  [ f ] = factorial_r( k ) 
    %  Recursively calculate factorial(k)
        if k==0 || k==1
            f = 1;
        else
            f= k*factorial_r(k-1);
        end
    end
    sum = 1;
    for k=1:n
        sum = sum + power(x,k)/factorial_r(k);
    end
    t = sum;
end
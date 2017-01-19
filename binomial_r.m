function [ y ] = binomial_r( n,k )
%UNTITLED Summary of this function goes here
%   binomial_r(n,k)

if n==k || k==0
    y=1;
else
    y= binomial_r(n-1,k)+binomial_r(n-1, k-1);
end
end


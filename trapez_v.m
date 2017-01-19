function [ I ] = trapez_v( f,h )
% f is the function, h is the delta x
%   
    I = h * (sum(f) - (f(1) + f(length(f))) / 2);
end
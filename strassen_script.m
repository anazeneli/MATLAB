% Ana Zeneli
% strassen_script.m
% This script more efficiently multiplies two matrices using Strassen's
% algorithm 
n= ceil(4*rand);
a= round(rand(2^n, 2^n));
b= round(rand(2^n, 2^n));

tic, strass(a,b); t1= toc
tic, c=a*b;t2= toc
disp(c);
if t1 < t2 
    disp('Strassen wins');
end

%{
    strassen_checkmark
    This script measures the time it takes each function to run and outputs
    that in a table
%}
%{
f = log2(n);
if f ~= round(f)                
   g = 2^nextpow2(n) - n ;
   padded = padarray(a, [g,g], 'post');
    % disp(padded)
end
%}

%{
disp('           Matlab      Strassen     Result ');
disp('     n     time 1      time 2       t2 - t1');
fprintf('------------------------=----------------------\n%3.0f');
fprintf('------------------------=----------------------\n%3.0f');

for i=1:6
    n= ceil(4*rand);
    a= round(10*rand(n,n));
    b= round(10*rand(n,n));
    tic, a*b; t1=toc;
    tic, strass(a,b,n); t2=toc;
    disp(sprintf('%6.0f   %10.6f  %10.6f   %10.6f  ', n,  t1, t2, t2-t1))
end
%}


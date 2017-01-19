function I = trapez_n
h = (b - a)/n;
x = a + (0:n) * h;
f = feval(f_name, x);
I = trapez_v(f, h); % Calling the trapez_v function
end
function I = Simps_n(f_name, a, b, n)
    h = (b - a)/n;
    x = a + (0:n) * h;
    f = feval(f_name, x);
    I = Simps_v(f, h); % Calling the Simps_v function
end
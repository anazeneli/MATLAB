n = 4; lowerlimit = 1; upperlimit = 5;
h = (upperlimit - lowerlimit) / n;
x = lowerlimit:h:upperlimit;
f = 1 + x.^2;
I = trapez_v(f, h)

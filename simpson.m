n = 4; lowerlimit = 2; upperlimit = 10;
h = (upperlimit - lowerlimit) / n;
x = lowerlimit:h:upperlimit;
f = func10(x);
I = Simps_v(f, h)
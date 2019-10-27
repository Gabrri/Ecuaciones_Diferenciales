function zf = Runge_K_DP(f, a, b, z0, n)
zf = z0;
h = (b-a)/n;
for i=1:n
    k1 = f(zf);
    k2 = f(zf+0.5*h*k1);
    k3 = f(zf+0.5*h*k2);
    k4 = f(zf+h*k3);
    zf = zf + (1/6)*h*(k1+2*k2+2*k3+k4);
end
end
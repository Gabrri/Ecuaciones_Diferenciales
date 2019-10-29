function [t, xf, yf, zf] = Met_4_Runge_Kutta(f , a, b , v0, n)
t = zeros(1, n+1);
xf = zeros(1, n+1);
yf= zeros(1, n+1);
zf = zeros(1, n+1);

t(1)=a;
xf(1)= v0(1);
yf(1)=v0(2);
zf(1)=v0(3);
h = (b-a)/n;

for i=1:n
    t(i+1) = t(i) +h;
    aux = [xf(i), yf(i), zf(i)];
    k1 = f(aux);
    k2 = f(aux+0.5*h*k1);
    k3 = f(aux+ 0.5*h*k2);
    k4 = f(aux + h*k3);
    xf(i+1) = xf(i)+(1/6)*h*(k1(1)+2*k2(1)+2*k3(1)+k4(1));
    yf(i+1) = yf(i)+(1/6)*h*(k1(2)+2*k2(2)+2*k3(2)+k4(2));
    zf(i+1) = zf(i)+(1/6)*h*(k1(3)+2*k2(3)+2*k3(3)+k4(3));
    
end
end

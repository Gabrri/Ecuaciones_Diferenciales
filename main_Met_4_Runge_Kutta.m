clc
sigma = 15
r = 28
b = 8/3

f=@(V)[-1*sigma*V(1)+sigma*V(2),r*V(1)-V(2)-V(1)*V(3),-1*b*V(3)+V(1)*V(2)];
% 3 ecuaciones

a = 1;
b1 = 50;
n = 1000;
h = (b1-a)/n;
x0 = 1;
y0 = 1;
m0 = 1;%nuevo valor inicial de la nueva ecuacion
z0 = [x0, y0, m0];
[t, xf, yf, zf] = Met_4_Runge_Kutta(f, a, b, z0, n);

figure
plot3(xf, yf, zf)
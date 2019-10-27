    function [t, y] = Euler(f,a,b,y0,n)
%UNTITLED2 Soluci?n con el m?todo de Euler de y?=f(t,y).
% [a,b] intervalo en que se calcula  la soluci?n a<b; n n?mero de divisiones, entero positivo.
%
t=zeros(1,n+1);
y=zeros(1,n+1);
t(1)=a;
y(1)=y0;
h=(b-a)/n; % longitud de cada paso.
for i=1:n
    t(i+1)=t(i)+h;
    y(i+1)=y(i)+h*f(t(i),y(i));
end
end

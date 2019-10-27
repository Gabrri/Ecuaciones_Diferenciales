% metodo de Euler
hold on
f=@ (t,y) -2*t*(y.^2);
%f=@(t,y) exp(t)*sin(y);

a=0;
b=2;
n=100;
y0=1;
[u,v]=Euler(f,a,b,y0,n);
plot(u,v)


h=(b-a)/n;
t=a:h:b;
w= 2*atan(exp(exp(t)-1.69));
w = 1./ (t.^2 + 1);
plot(u, w,'r')
error=max(abs(v-w))

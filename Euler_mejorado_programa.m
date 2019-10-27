function [t, y] = Euler_mejorado_programa(f,a,b,y0,n)
t = zeros(1, n+1); % vector del tiempo
y = zeros(1, n+1); % vector puntyos evaluados 
t(1)=a; % empieza el intervalo, empieza el tiempo
y(1) = y0; %condicion inicial
h = (b-a)/n; %el paso que da

for i=1:n
    t(i+1)=t(i)+h;
    fi= f(t(i),y(i));
    fih = f(t(i)+h, y(i)+h*(fi));
    y(i+1)=y(i)+((fi+fih)*(1/2)*h);
    
end
end

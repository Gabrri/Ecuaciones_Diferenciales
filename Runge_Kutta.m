function [t, y] = Runge_Kutta(f,a,b,y0,n)
t(1)=a; 
y = zeros(1, n+1);
t = zeros(1, n+1);
y(1) = y0; % y inicial
h=(b-a)/n; %numero de pasos

 for(i=1:n)
        k1 = f(t(i),y(i));
        k2 = f(t(i)+0.5*h,y(i)+0.5*k1*h);
        k3 = f(t(i)+0.5*h,y(i)+0.5*k2*h);
        k4 = f(t(i)+h,y(i)+k3*h);
        y(i+1) = y(i)+(1/6)*h*(k1+2*k2+2*k3+k4);
        t(i+1) = t(i)+h;
    end

end

   
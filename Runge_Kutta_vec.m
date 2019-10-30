function [t,xf,yf,zf] = Runge_Kutta_vec(f,a,b,z0,n)
    %f es la función que define el campo vectorial
    %t es un vector de 2 elementos, siendo la primera entrada el valor
    %inicial y la segunda entrada el valor al que quiero llegar
    %z0 es un vector con los valores iniciales de a funciones, es decir
    %todas las funciones evaluadas en t(1)
    %h es el tamaño de paso que quiero dar por iteración.
    t = zeros(1,n+1);
    xf = zeros(1,n+1);
    yf = zeros(1,n+1);
    zf = zeros(1,n+1);
    t(1) = a;
    xf(1) = z0(1);
    yf(1) = z0(2);
    zf(1) = z0(3);
    h = (b-a)/n;
   
    for i=1:n %Todos los k's son parte de runge kutta
        t(i+1) = t(i) + h;
        fun = [xf(i),yf(i),zf(i)];
        k1 = f(fun);
        k2 = f(fun + 0.5*h*k1);
        k3 = f(fun + 0.5*h*k2);
        k4 = f(fun + h*k3);
        xf(i+1) = xf(i)+ (1/6)*h*(k1(1)+2*k2(1)+2*k3(1)+k4(1));
        yf(i+1) = yf(i)+ (1/6)*h*(k1(2)+2*k2(2)+2*k3(2)+k4(2));
        zf(i+1) = zf(i)+ (1/6)*h*(k1(3)+2*k2(3)+2*k3(3)+k4(3));
    end
   
    %Cuando acabe el for, zf será un vector con todas las funciones
    %evaluadas en el valor final, es decir t(2).
end
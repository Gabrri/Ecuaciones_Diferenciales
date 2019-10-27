% PROGRAMAS INFORME ECUACIONES 2 PUNTO 
clc
hold on
f=@ (t,y) 2*y+1;
a=0;
b=2;

%n=10;
%n=20;
n=50;

y0=3;
[u,v]=Euler_mejorado_programa(f,a,b,y0,n);
[m,s]=Euler(f,a,b,y0,n);
[q,z]=Runge_Kutta(f,a,b,y0,n);

plot(u,v) %grafica euler mejorado
plot(m,s) % grafica euler
plot(q,z) %grafica runge kutta

t=a:h:b;
w = (-1/2)+(7/2)*exp(2*t);

%ANALITICAS

plot(u, w,'p') %grafica euler mejorado 

title('Euler, Euler Mejorado, Runge Kutta vs Tiempo') 
xlabel('0 <= t <= 2')
ylabel('Soluciones metodos numericos y analitica')
legend({'Euler Mejorado', 'Euler','Runge kutta', 'Analitica'}, 'Location', 'northwest')
saveas(gcf,'Grafica_punto_2.jpg')
h=(b-a)/n





%ERROR

Error1=max(abs(v-w))
Error2=max(abs(s-w))
Error3=max(abs(z-w))

%ERROR TOTAL GRAFICAS

error1=(abs(v-w));
error2=(abs(s-w));
error3=(abs(z-w));

%plot(t, error1); %euler mejorado
%plot(t, error2); %euler
%plot(t, error3); %runge kutta

%title('ERROR con n = 50 de Euler, Euler Mejorado, Runge Kutta vs Tiempo') 
%xlabel('0 <= t <= 2')
%ylabel('Error de Euler Mejorado, Euler y Runge Kutta')
%legend({'Euler Mejorado', 'Euler','Runge kutta'}, 'Location', 'northwest')
%saveas(gcf,'Grafica_punto_2_Error.jpg')




% PROGRAMAS INFORME ECUACIONES 3 PUNTO 
clc
hold on
f=@ (t,y) -2*t*y^2;

a=0;
b=2;

%n=10;
%n=20;
n=50;

y0=1;

[u,v]=Euler_mejorado_programa(f,a,b,y0,n);
[m,s]=Euler(f,a,b,y0,n);
[q,z]=Runge_Kutta(f,a,b,y0,n);

%plot(u,v) %grafica euler mejorado
%plot(m,s) % grafica euler
%plot(q,z) %grafica runge kutta

h=(b-a)/n

t=a:h:b;
w = 1./(t.^2+1);

%ANALITICAS

%plot(u, w,'p') %grafica euler mejorado 

%title('Euler, Euler Mejorado, Runge Kutta vs Tiempo') 
%xlabel('0 <= t <= 2')
%ylabel('Soluciones metodos numericos y analitica')
%legend({'Euler Mejorado', 'Euler','Runge kutta', 'Analitica'}, 'Location', 'southwest')
%saveas(gcf,'Grafica_punto_3_info.jpg')
%ERROR

Error1=max(abs(v-w))
Error2=max(abs(s-w))
Error3=max(abs(z-w))

%ERROR TOTAL GRAFICAS

error1=(abs(v-w));
error2=(abs(s-w));
error3=(abs(z-w));

plot(t, error1); %euler mejorado
plot(t, error2); %euler
plot(t, error3); %runge kutta

title('ERROR con n = 50 de Euler, Euler Mejorado, Runge Kutta vs Tiempo') 
xlabel('0 <= t <= 2')
ylabel('Error de Euler Mejorado, Euler y Runge Kutta')
legend({'Euler Mejorado', 'Euler','Runge kutta'}, 'Location', 'northeast')
saveas(gcf,'Grafica_punto_3_Error.jpg')



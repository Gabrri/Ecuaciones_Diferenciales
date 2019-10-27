%PUNTO 5 DE ECUACIONES
%DIFERENTES VALORES PARA A Y B 

clc
hold on 
f=@(V)[V(1)*(1-V(2)*0.5),V(2)*1/3*(-1+V(1)*(1/3))];

a = 0;
b = 50;
n = 500;
h = (b-a)/n;

x0 = 5;
y0 = 2;
z0 = [x0, y0];


t=a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);

zf = Runge_K_DP(f, a, b, z0, n);

%MIRAR EL PERIODO
for i=2:200
    if (x0 == round(xf(i),3))
        x = xf(i);
        y = yf(i);
        periodo =t(i)
    end
end

for i=1:length(t)
    zf = Runge_K_DP(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end

%depredador vs tiempo
%plot(t, yf)



%title('Depredador vs t') 
%xlabel('Tiempo')
%ylabel('Depredador')
%legend({'a = 1, b= 1'}, 'Location', 'northeast')
%saveas(gcf,'Grafica_punto_5_2A.jpg')


%presa vs tiempo
%plot(t ,xf)


%title('Presa vs t') 
%xlabel('Tiempo')
%ylabel('Presa')
%legend({'a = 1, b = 1'}, 'Location', 'northeast')
%saveas(gcf,'Grafica_punto_5_2B.jpg')



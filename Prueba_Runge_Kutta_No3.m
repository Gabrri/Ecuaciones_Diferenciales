
%RUNGE KUTTA 3 ECUaciones

clc
hold on 
sigma = 15
r = 20
b = 8/3
f=@(V)[-1*sigma*V(1)+sigma*V(2),r*V(1)-V(2)-V(1)*V(3),-1*b*V(3)+V(1)*V(2)];% 3 ecuaciones

a = 0;
b = 50;
n = 500;
h = (b-a)/n;

x0 = 1;
y0 = 1;
m0 = 1;%nuevo valor inicial de la nueva ecuacion
z0 = [x0, y0, m0];

zf = Runge_K_DP(f, a, b, z0, n);
t=a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);
mf = zeros(1, n+1);

for i=1:length(t)
    zf = Runge_K_DP(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
    mf(i) = zf(3);
end
%figure
plot3(xf,yf,mf)

%title('Depredadores vs Presas') 
%xlabel('0 <= t <= 50')
%ylabel('Depredadores vs Presas')
%legend({'Depreradores y presas y(0)=2, x(0)=5'}, 'Location', 'northeast')
%saveas(gcf,'Grafica_punto_4_huevito.jpg')




%plot(t ,xf)
%plot(t, yf)


%PUNTO 4 ECUACIONES 

clc
hold on 
f=@(V)[V(1) - 0.5*V(1)*V(2), -0.75*V(2) + 0.25*V(1)*V(2)];
a = 0;

b = 50;

n = 500;
h = (b-a)/n;

x0 = 10;
y0 = 10;
z0 = [x0, y0];

zf = Runge_K_DP(f, a, b, z0, n);
t=a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);
for i=1:length(t)
    zf = Runge_K_DP(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end
%plot(xf,yf)

%title('Depredadores vs Presas') 
%xlabel('0 <= t <= 50')
%ylabel('Depredadores vs Presas')
%legend({'Depreradores y presas y(0)=2, x(0)=5'}, 'Location', 'northeast')
%saveas(gcf,'Grafica_punto_4_huevito.jpg')




plot(t ,xf)
plot(t, yf)

title('Depredadores vs Presas') 
xlabel('0 <= t <= 50')
ylabel('Depredadores vs Presas')
legend({'t vs Presas', 't vs Depredadores'}, 'Location', 'northeast')
saveas(gcf,'Grafica_punto_4_comparadas2.jpg')


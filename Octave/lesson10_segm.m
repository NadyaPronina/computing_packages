##f = @(x) 1 + (1 + sin(x)-cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2;
##x = -10:0.1:10;
##y = f(x);
##plot(x, y)
##hold on
##plot(x, 0*x);
##grid on;
##
##a = -5;
##b = 5;
##
##eps = 1e-6;
##
##% Разбиваем интервал на подотрезки и ищем корни на каждом из них
##step = 0.001;
##x_roots = [];
##
##for i = a + step : step : b - step
##    if f(i-step)*f(i) <= 0
##        while abs(i - step/2 - i + step/2) > eps
##            c = (i - step/2 + i + step/2) / 2;  #середина
##            if f(i-step)*f(c) <= 0
##                i = i - step/2;
##            else
##                i = i + step/2;
##            endif
##        endwhile
##        x_roots = [x_roots, i];
##    endif
##endfor
##
##
##plot(x_roots, f(x_roots), 'r*')
##hold off


## 03.04  нахожу методом Ньютона все корни уравнения
##f = @(x) 1 + (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2;
##x = -10:0.1:10;
##
##plot(x, f(x));
##hold on
##plot(x, 0*x);
##grid on;
##eps = 1e-10;
##h = 0.00005;
##
##roots_x =[];
##a = -5;
##b = 5;
##step = 0.1;
##for i = a:step:b
##    fdif = (f(i + h) - f(i)) / h;
##    xprev = i;
##
##    xn = i - (f(i) / fdif);
##
##    while (abs(xn - xprev) > eps)
##      xprev = xn;
##      fdif = (f(xn + h) - f(xn)) / h;
##      xn = xn - (f(xn) / fdif);
##    endwhile
##    if(xn <= b) && (xn >= a)
##      roots_x = [roots_x, xn];
##    endif
##endfor
##
##res = unique(roots_x);
##
##plot(res, f(res), 'r*');
##hold off


# на плоскости (прямоугольник) от -2, 2 найти точки и если точка методом Ньютона
# сходится к корню, найденному roots, то раскрашиваем определенным цветом
# комплексозначная ф-ция z^3 - 1
clear
p = [1, 0, 0, -1];
res = [];
res = roots (p);

iter = 1;
a = -2; b = 2;

while iter <= 40

endwhile















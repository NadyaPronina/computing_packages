##x = [0:0.02:1];
##y =x.*(1-x)+0.1;
##x1 = [-0.5:0.5:1.5];
##y1 = (x1+0.5)/5;
##
##
##figure('numbertitle', "off", 'Name', 'My graph')
##plot(x,y, 'linestyle', '--', 'linewidth', 3, 'color', 'r');
##figure
##plot(x1,y1, 'linestyle', ':', 'linewidth', 3, 'color', 'g');

##figure
##subplot(2,3,[1,2])
##plot(x,y)
##subplot(2,3,[5,6])
##x2 = -pi:0.1:pi;
##plot(x2, sin(x2))

##figure
##fplot(@tan, [0,pi]) #не использовать в октав, только в матлабе норм
##
##figure
##x = 0:0.01:pi;
##plot(x,tan(x))

##x = 0:0.01:20;
##y1 = 200*exp(-0.5*x).*sin(x);
##y2 = 0.8*exp(-0.5*x).*sin(10*x);
###plot(x,y1, x,y2)  #200 забивает вторую, так не очень
##plotyy(x,y1, x,y2) #do like this
###legend
##
####figure
##[hAx, hLine1, hLine2] = plotyy(x,y1,x,y2); #на выходе граф оси(1эл),
##                                           # handleLine1 и 2 отвечают за кривые
##set(hLine1, 'color', 'r', 'linestyle', '--', 'linewidth', 3)
##set(hLine2, 'color', 'g', 'linewidth', 2)

##F = @(x,y) x.*(x + y.^3) - 1;
##C = ezplot(F, [-1 2 -4 4]); #ломается, когда навороченный график. в матлабе норм
##set(C, 'linewidth', 3, 'color', 'm')

##F = @(x,y) x.*(x + y.^3) - 1;
##fimplicit(F, [-1 2 -4 4]); #она есть в матлаб(она рек-ется), но нет в октав



#задача найти мин и макс и подписать все значения от 20 до 40
##x = 0:.01:1;
##y = humps(x);
##minim = min(y);
##maxim = max(y);
####ylabel('max', maxim);
####xlabel(minim);
##y_idx = find(y >= 20 & y<=40);
##plot(x,y);
##hold on
##plot(x(y_idx),y(y_idx), 'd', 'color', 'm')
##hold off


t = [-5:5];
#disp(t);
a = 1/4;
b = 1/16;
m =8; n=8;
k = [1:100];
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) - a*sin(m*t) + b*cos(n*t);
plot(x/k, y/k);




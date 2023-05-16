##t = [-5:0.01:5];
##a = 1/4;
##b = 1/16;
##m =8; n=8;
##k = 10;
##x = cos(t) + a*cos(m*t) + b*sin(n*t);
##y = sin(t) + a*sin(m*t) + b*cos(n*t);
##hold on;
##for i=1:k
##  plot(x/i, y/i);
##endfor
##hold off;

#3х мерная графика

##t = 0:0.05:9*pi;
##x = 2*sin(t);
##y = 3*cos(t);
##
####plot3(x,y,t, 'linewidth', 3);
##comet3(x,y,t); ##можно менять скорость и тд
##grid on;
##xlabel("x");
##ylabel("y");
##zlabel("z");


##формирует опорную сетку на Оху, а по z поднимается или опускается
#[X,Y] = meshgrid(x,y);

##clear
##[x,y] = meshgrid(-5:0.5:5,-5:0.5:5);
##plot(x,y);
##xlabel("x");
##ylabel("y");

##clear
##x = -10:0.1:10;
##y = -10:0.1:10;
##[X,Y] = meshgrid(x,y);
##Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
##
##surfc(X,Y,Z); #линии уровня.
##              #surf только в явном виде, если неявный, то параметризация
##colormap('ocean')
##shading interp
##colorbar
##contour(X,Y,Z) #контурные карты


##subplot(1,3,1)
####mesh(X,Y,Z);
##surf(X,Y,Z);
####hidden off;
##shading flat
##
##subplot(1,3,2)
##surf(X,Y,Z);
##shading faceted
##
##subplot(1,3,3)
##surf(X,Y,Z);
##shading interp

##clear
##u = 0:0.008:(2*pi + 0.1);
##v = -1:0.008:1;
##[U,V] = meshgrid(u,v);
##x = (1+(V./2).*cos(U./2)).*cos(U);
##y = (1+(V./2).*cos(U./2)).*sin(U);
##z = (V./2).*sin(U./2);
##surf(x,y,z);
##colormap('ocean');
##shading interp;






















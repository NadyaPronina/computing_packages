clear;
res = [];
p = [1 0 0 -1];
res = roots(p);
disp(res);
iter = 40;

f = @(z) z.^3 - 1;
diffz = @(z) 3*z.^2;
eps = 1e-6;
hold on;
k = -2:0.01:2;
m = -2:0.01:2;
[X,Y] = meshgrid(k,m);
z02 = X+i*Y;

for k = 1:iter
    z02 = z02 - (f(z02)./diffz(z02));
endfor

cm = [1 0 0; 0 1 0; 0 0 1; 0 0 0];
colormap(cm);
##figure

z1 = z02 - res(1) < eps; #соотв первому цвету (1)
z2 = z02 - res(2) < eps;
z3 = z02 - res(3) < eps;
z4 = ~(z1 + z2 + z3);

Z = z1 + 2*z2 + 3*z3 + 4*z4;
image([-2, 2], [-2, 2], Z);

##if(z02 - res(1) < eps || z02 - res(2) < eps || z02 - res(3) < eps)
##  image([-2, 2], [-2, 2], z02 );
##elseif(z02 - res(2) < eps)
##  image([-2, 2], [-2, 2], z02 );
##elseif(z02 - res(3) < eps)
##  image([-2, 2], [-2, 2], z02);
##else
##  image([-2, 2], [-2, 2], z02);
##endif

hold off;

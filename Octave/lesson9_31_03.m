##fzero(@f, x0) #неточное решение. Улучшенный метод Ньютона
##
##solve #решение в символьном виде и все существующие решения находит


res = fzero(f, x1);

plot(res, f(res), 'r*', 'markersize', 7)
eps = 0.001;
a = min(x);
b = max(x);
while (round(b - a) > eps)
  tmp =  (b + a)/2;
  f1 = f(a); f2 = f(tmp);
  if(f1*f2 >= 0)
    a = tmp;
  else
    b = tmp;
  endif
  for i = x
    if(f1 < eps)
      result(i) = f1;
    endif
    if(f1 < eps)
      result(i) = f2;
    endif
  endfor
endwhile



hold off



##function reval = lesson9_31_03(f, x0)
##  x = -10:0.1:10;
##  plot(x, f(x));
##  hold on
##  plot(x, 0*x)
##
##
##
##  hold off
##endfunction

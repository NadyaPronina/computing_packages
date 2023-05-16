##function retval = cattersin (num)
clear;
    t = linspace(0, 2*pi, 100);
    r = 1;
    i = 1;
    k = 0;
    num = 5;
    res = [];
    hold on
    for i = 1:num
      x = r*cos(t) + k*r;
      y = r*sin(t);
      ph = plot(x,y, 'color', [(3*i+110)/255 (i+15)/255 (i*10+50)/255]);
      if i == 1
        set(gca, 'xlim', [-2 30], 'ylim', [-2 30]);
      endif
      res(i) = ph;
      i += 1;
      k += 2;
    endfor

    x1 = linspace(0, 5*pi, 100);
    y1 = @(x1)sin(x1);
    plot(x1,y1(x1));
    l = num - 1;
    for h = linspace(0, 5*pi, 100)
      for i = 1:num
        if i == 1
          set(res(i), 'XData', x + h, 'YData', y + feval(y1, h + l))
        else
          set(res(i), 'XData', x - k*r + h, 'YData', y + feval(y1, h + l))
        endif
        k -= 2;
        l-=1;
        if l == 0
          l = num-1;
        endif
        drawnow;
        pause(0.3)
      endfor
    endfor

    hold off
##endfunction

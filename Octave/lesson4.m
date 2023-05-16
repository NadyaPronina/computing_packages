x = -2:0.1:2;
y1 = x.*(1-x)+0.5;
y2 = exp(-0.5*x).*(sin(x))

##plot(x,y, 'LineWidth', 2, 'Color', [13/2023 3/2023 1/2])

##plot(x,y1, 'LineWidth', 2, 'Color', [0.7 0.9 1/2])
plot(x, y1)
hold on

##plot(x, y2, 'LineWidth', 2, 'Color', [13/2023 3/2023 1/2])
plot(x,y2)
grid on
hold off
xlabel('x')
ylabel('y')
title('my graph')
legend

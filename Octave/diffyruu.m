## diff это и difference и differensial
## если символьный пакет, то это производная!!!
## pkg load symbolic
## syms y(t) ключевое слово симс делает эту переменную символьной

##pkg load symbolic
##syms y(x);

##sol1 = dsolve(DE, y(0) == 0.3);
##
##xval = linspace(-5, 5, 100);
##sol2 = function_handle(sol1);
##sol2 = @(x) 3*exp(x.^2/10)/10;
##y = sol2(xval)
##plot(xval, y, 'g*', 'markersize', 3)

##DE = diff(y(x), x) - 0.2 * x*y(x) == 0;


##ode_sys = [diff(x(t), t) == y(t); diff(y(t), t) == x(t)];
##soln = dsolve (ode_sys);
##sx = soln.x
##sy = soln.y



##метод восходящих разностей
##x = linspace(0, pi/2,10);
##y = sin(x);
##
##dydx_an = cos(x)
##dydx_app = diff(y)./diff(x)



##метод нисходящих разностей
##смотрим назад


##метод центральных разностей
##gradient уже с центр разностями



## численное решение

## метод Рунге-Кутты (4х шаговый)
##ode45 - это 4х шаговый
##ode23 - 2х шаговый

## [t,y] = odesolver(function_handle, [initial_time, final_time], [initial_cond_array])
##
##F = @(t,y) 2*y;
##t0 = -1;
##tfin = 1;
##y0 = 1;
##[t, y] = ode45(F, [t0 tfin], y0)
##plot(t, y)



## x' = y;  y' = -x

##function dy = diffyruu(t,y)
##  dy(1) = y(2);
##  dy(2) = -y(1);
##  dy = [dy(1); dy(2)];
##endfunction

##tspan = [-1,1];
##disp("aaa");
##y0 =1;
##x0 =1;
##ode45(@diffyruu, tspan, [y0, x0]);



##
##function dydt = diffyruu(t,y) ## у сост из y(1) = y; y(2) = z
##  dydt(1) = y(2);
##  dydt(2) = y(1) + t - dydt(1);
##  dydt = dydt';
##endfunction

##
##clear;
##% Define parameters
##g = 9.81; % Acceleration due to gravity (m/s^2)
##L = 1; % Suspension length (m)
##
##% Define initial conditions
##theta0 = pi/6; % Initial angle (radians)
##omega0 = 2; % Initial angular velocity (radians/s)
##
##% Define time range and step size
##t0 = 0; % Initial time (s)
##tf = 30; % Final time (s)
##h = 0.01; % Time step size (s)
##
##% Define function for differential equation
##f = @(t, y) [y(2); -g/L*sin(y(1))];
##
##% Use fourth-order Runge-Kutta method to solve differential equation
##[t, y] = ode45(f, t0:h:tf, [theta0, omega0]);
##
##% % Plot angle vs. time
##% figure();
##% plot(t, y(:, 1));
##% xlabel('Time (s)');
##% ylabel('Angle (rad)');
##% title('Mathematical Pendulum');
##% hold off;
##% Define animation parameters
##fps = 30; % Frames per second
##speedup = 10; % Speedup factor
##dt = 1/(fps*speedup); % Time step for animation
##scale = 1; % Scale factor for visualization
##
##% Create figure window
##fig = figure();
##figure(fig);
##ampl = subplot(3,1,1);
##anim = subplot(3,1,[2 3]);
##
##
##% Initialize pendulum position
##x0 = 0;
##y0 = 0;
##
##hold(anim,"on");
##line = plot(anim,[x0, x0], [y0, y0], 'b-', 'LineWidth', 2);
##dot = plot(anim,x0, y0, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
##set(anim, 'xlim', [-1 1], 'ylim', [-1 0]);
##
##hold(ampl,"on");
##amplitude = plot(ampl,t, y(:,1), 'k-', 'LineWidth', 2);
##massdot = plot(ampl,t(1), y(1,1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
##
##% Loop over time steps
##for i = 1:length(t)
##    % Calculate position of pendulum
##    x1 = x0 + L*sin(y(i, 1))*scale;
##    y1 = y0 - L*cos(y(i, 1))*scale;
##
##    % Plot pendulum
##    set(line, 'xData',[x0, x1], 'yData', [y0, y1]);
##    set(dot,'xData', x1, 'yData',y1);
##    set(massdot, 'XData', t(i), 'YData', y(i,1));
##    % Update pendulum position
##    %x0 = x1;
##    %y0 = y1;
##
##    % Pause to create animation effect
##    pause(dt);
##end
##hold(anim,"off");
##hold(ampl, "off");












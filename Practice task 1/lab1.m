% Dronov Dmitrii TI-202 F/R
% Lucrarea Lab nr.1
% Variant 12

% Clears screen
clc;
% Set the output format to the long
format long;

x = -1.75 * 10^-3;
y = 3.1 * pi;
upper1 = [x * (1 + x^2)*(1 + 2 * x)^2]^2.3; 
lower1 = log(abs(cot(y)));
upper2 = log(abs(cot(y))) - x;
lower2 = (x * (1 + x^2) * (1 + 2 * x)^2);
H1 = (upper1 / lower1) + (upper2 / lower2);

upper1 = sqrt(2 * x + sin(y)^2);
lower1 = ((x + log(abs(tan(y))))^1.3) + abs(x);
upper2 = (x + log(tan(y)) + cos(y));
lower2 = (2 * x + sin(y)^2)^1/3;
R2 = (sinh(upper1 / lower1)) - (upper2 / lower2);

% print variables values in msgbox
msgbox(sprintf("x = %f, y = %f\nH1 = %f, R2 = %f", x, y, H1, R2));

% show variables and its data
whos

x = (-pi:3 * pi);
disp(x)

% for figure 1
f = x.^2 .* cos(x);
% for figure 2
g = x.^3 .* cos(x);

figure(1);
plot(x, f, 'g--');
title('Function f(x)');
xlabel('x');
ylabel('y');
legend('f(x)');

figure(2);
plot(x, g, 'ro--');
title('Function g(x)')
xlabel('x');
ylabel('y');
legend('g(x)');

figure(3);
plot(x, f, 'b*--', x, g, 'ro--');
title('Functions g(x) and f(x)')
xlabel('x');
ylabel('y');
legend('f(x)', 'g(x)');

% we use command sublot to divide 1 figure on 3 horizontal parts to draw 3 graphs, 1 graph will present function f.
figure(4);
subplot(3,1,1);
plot(x,f);
legend('f(x)');
xlabel('x');
ylabel('y');

% 2nd graph will present function g, red color.
subplot(3,1,2);
plot(x,g,'r');
legend('g(x)');
xlabel('x');
ylabel('y');

% 3rd graph will present functions f and g on same axes on square grid, function g will be printed in red color
subplot(3,1,3);
plot(x,f,x,g,'r');

% grid of squares will be drawn on screen
grid on;
legend('f(x)','g(x)');
xlabel('x');
ylabel('y');

% We use command sublot to divide 2 figure on 3 vertical parts to draw 3 graphs, 1 graph will present function f in green color.
figure(5);
subplot(1,3,1);
plot(x,f,'g');
legend('f(x)');
xlabel('x');
ylabel('y');

% 2 graph will present function g in pink color.
subplot(1,3,2);
plot(x,g,'m');
legend('g(x)');
xlabel('x');
ylabel('y');

% 3 graph will present functions f and g on same axes, f will be green and g will be pink
subplot(1,3,3);
plot(x,f,'g',x,g,'m');
grid on;
legend('f(x)','g(x)');
xlabel('x');
ylabel('y');

% In figure 6 we plot functions f and g on two several horizontal graphs using command sublot, f=black, g red.
% Also we draw big vertical graph in right side of screen which presents functions f and g on same axes
figure(6);
subplot(2,2,1);
plot(x,f,'k');
legend('f(x)');
xlabel('x');
ylabel('y');
subplot(2,2,3);
plot(x,g,'r');
legend('g(x)');
xlabel('x');
ylabel('y');
subplot(2,2,[2,4]);
plot(x,f,'k',x,g,'r');

% square grid is shown on graph
grid on;
legend('f(x)','g(x)');
xlabel('x');
ylabel('y');

% In figure 7 we divide screen on 4 parts using subplot command , in upper side will be presented long horizonal graph which shows functions f and g on same axes
% In third and fourth part we present two several graph which show functions f pink color and g blue color.
figure(7);
subplot(2,2,3);
plot(x,f,'m--');
legend('f(x)');
xlabel('x');
ylabel('y');
subplot(2,2,4);
plot(x,g,'b-..');
legend('g(x)');
xlabel('x');
ylabel('y');
subplot(2,2,[1,2]);
plot(x,f,'m--',x,g,'b-..');
grid on;
legend('f(x)','g(x)');
xlabel('x');
ylabel('y');
% Dronov Dmitrii TI-202 F/R
% Lucrarea Lab nr.2
% Variant 12

% Clears screen
clc;
% Set the output format to the long
format long;

x = [0:0.05:1];
y = f(x);

% In window will be ploted two graphs of function f(x): 1 plot, 2 fplot
figure(1);
subplot(1, 2, 1);
plot(x, y);
subplot(1, 2, 2);

% fplot requires name of function as a string and interval of values as arguments
% step is chosen automatically
fplot('f', [0,1]);

passfigure(0.8, 2)
passfigureSec(1, 3)
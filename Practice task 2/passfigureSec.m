function t =  passfigureSec(pass, fig)

tmax = 2*pi;

t = 0:pass:tmax;
[x, y, z] = xyz(t);
comet3(x, y, z); %Plotting trajectory of point in 3D
figure(fig);
plot3(x, y, z)
grid on
hold on
t = tmax * rand; %random t
[x, y, z] = xyz(t); %Plotting point position in random amount of time
plot3(x, y, z,'ro-')
title(['t=', num2str(t)])
hold on
grid on
xlabel('x')
ylabel('y')
zlabel('z')
legend('z=f(x),Trajectory')

endfunction
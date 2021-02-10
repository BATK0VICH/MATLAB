function t = passfigure(pass, fig)
  
  tmax = 3 * pi;
  t = 0:pass:tmax;
  [x, y] = xy(t)
  
  comet(x,y); % Plotting trajectory of point
  figure(fig);
  plot(x,y)
  grid on
  hold on
  t = tmax * rand; % random t
  [x,y] = xy(t); % Plotting point position in random amount of time
  plot(x,y,'ro-')
  title(['t=',num2str(t)])
  hold on
  grid on
  xlabel('x')
  ylabel('y')
  legend('y=f(x),Trajectory')
  
endfunction
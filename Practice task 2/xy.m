function [x, y] = xy(t)
  x = e.^t .* cos(t)
  y = 3 .* sin(cos(t))
endfunction

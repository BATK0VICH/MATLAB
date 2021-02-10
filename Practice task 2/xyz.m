function[x,y,z] = xyz(t)
  x = 2 .* cos(sin(t));
  y = 3 .* sin(t .- 1);
  z = t.^(1/2);
endfunction
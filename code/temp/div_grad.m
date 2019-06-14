syms x y
H = x + y^2;
u = [sin(x), sin(y)]';
vars = [x, y];
%divergence(H * gradient(u, vars), vars)
gradient(gradient(H, vars), vars)
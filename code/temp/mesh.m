Lx = 10; Ly = 1;
[X, Y] = meshgrid(0:0.05:Lx, 0:0.05:Ly);
Z = 0.01 * (Ly + X) .* (Y - Ly) .* Y;
surf(X, Y, Z)
xlabel('x'); ylabel('y'); zlabel('z');
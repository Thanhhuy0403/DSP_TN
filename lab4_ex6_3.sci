x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

y = conv(x, h);

Nx = length(x);
Ny = length(y);

nx = 0:Nx-1;
ny = 0:Ny-1;

energy_x = sum(x.^2);
energy_y = sum(y.^2);

energy_x_vec = energy_x * ones(1, Nx);
energy_y_vec = energy_y * ones(1, Ny);

scf(0);
clf();

subplot(3,1,1);
plot2d3(nx, x, style=2, rect=[0, min([x,y])-1, max([Nx,Ny])-1, max([x,y])+2]);
plot(nx, x, 'ro-', 'LineWidth', 2);
xlabel('n');
ylabel('x(n)');
title('Tin hieu x(n)');
legend('x(n)', 'Location', 'best');
a = gca();
a.grid = [1,1];

subplot(3,1,2);
plot2d3(ny, y, style=5, rect=[0, min([x,y])-1, max([Nx,Ny])-1, max([x,y])+2]);
plot(ny, y, 'bo-', 'LineWidth', 2);
xlabel('n');
ylabel('y(n)');
title('Tich chap y(n) = x(n) * h(n)');
legend('y(n)', 'Location', 'best');
a = gca();
a.grid = [1,1];

subplot(3,1,3);

bar([0], energy_x, 0.3, 'r');
bar([1], energy_y, 0.3, 'b');
set(gca(), 'xtick', [0,1]);
set(gca(), 'xtick_labels', ['E_x', 'E_y']);
ylabel('Nang luong');
title('Nang luong cua tin hieu');
legend(['E_x = ' + string(energy_x), 'E_y = ' + string(energy_y)], 'Location', 'best');
a = gca();
a.grid = [1,1];

disp('Nang luong cua x(n): ' + string(energy_x));
disp('Nang luong cua y(n): ' + string(energy_y));

n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

n_c = n - 2;
x_c = x;

plot2d3(n_c, x_c, rect=[min(n_c)-1, -0.2, max(n_c)+1, max(x_c)+0.3]);
plot(n_c, x_c, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(c) x(n+2)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(n_c)-0.5, -0.2; max(n_c)+0.5, max(x_c)+0.3];

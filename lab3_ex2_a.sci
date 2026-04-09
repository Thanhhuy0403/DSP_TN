n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

n_a = n + 2;
x_a = x;

plot2d3(n_a, x_a, rect=[min(n_a)-1, -0.2, max(n_a)+1, max(x_a)+0.3]);
plot(n_a, x_a, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(a) x(n-2)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(n_a)-0.5, -0.2; max(n_a)+0.5, max(x_a)+0.3];

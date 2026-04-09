n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

n_b = 4 - n;
[n_b_sorted, idx] = gsort(n_b, 'g', 'i');
x_b = x(idx);

plot2d3(n_b_sorted, x_b, rect=[min(n_b_sorted)-1, -0.2, max(n_b_sorted)+1, max(x_b)+0.3]);
plot(n_b_sorted, x_b, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(b) x(4-n)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(n_b_sorted)-0.5, -0.2; max(n_b_sorted)+0.5, max(x_b)+0.3];

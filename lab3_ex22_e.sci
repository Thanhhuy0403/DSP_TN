n_e = [3];
x_e = [0.5];

plot2d3(n_e, x_e, rect=[2, -0.2, 4, 0.8]);
plot(n_e, x_e, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(e) x(n-1)\delta(n-3)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [2.5, -0.2; 3.5, 0.8];

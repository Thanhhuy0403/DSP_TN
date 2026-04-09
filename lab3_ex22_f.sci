n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

n_f = n .^ 2;
unique_n_f = unique(n_f);
x_f = [];
for i = 1:length(unique_n_f)
    k = unique_n_f(i);
    idx = find(n_f == k);
    x_f = [x_f, x(idx(1))];
end

plot2d3(unique_n_f, x_f, rect=[min(unique_n_f)-1, -0.2, max(unique_n_f)+1, max(x_f)+0.3]);
plot(unique_n_f, x_f, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(f) x(n^2)');
xlabel('n^2');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(unique_n_f)-0.5, -0.2; max(unique_n_f)+0.5, max(x_f)+0.3];

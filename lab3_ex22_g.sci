n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

n_all = -4:4;
x_all = zeros(1, length(n_all));
for i = 1:length(n)
    for j = 1:length(n_all)
        if n_all(j) == n(i) then
            x_all(j) = x(i);
        end
    end
end

x_flip = x_all($:-1:1);
x_even = (x_all + x_flip) / 2;

plot2d3(n_all, x_even, rect=[min(n_all)-1, -0.2, max(n_all)+1, max(x_even)+0.3]);
plot(n_all, x_even, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(g) Even part of x(n)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(n_all)-0.5, -0.2; max(n_all)+0.5, max(x_even)+0.3];

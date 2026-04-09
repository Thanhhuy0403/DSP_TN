n = -1:4;
x = [1, 1, 1, 1, 0.5, 0.5];

u = zeros(x);
for i = 1:length(n)
    if n(i) <= 2 then
        u(i) = 1;
    end
end
x_d = x .* u;

plot2d3(n, x_d, rect=[min(n)-1, -0.2, max(n)+1, max(x_d)+0.3]);
plot(n, x_d, 'ro', 'markersize', 8, 'markerfacecolor', 'red');
title('(d) x(n)u(2-n)');
xlabel('n');
ylabel('Amplitude');
xgrid;
a = gca();
a.data_bounds = [min(n)-0.5, -0.2; max(n)+0.5, max(x_d)+0.3];

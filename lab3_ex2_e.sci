n = -5:5;

// Cach 1: Bieu dien bang delta
x_delta = zeros(n);
for i = 1:length(n)
    if n(i) == -3 then
        x_delta(i) = 1/3
    elseif n(i) == -2 then
        x_delta(i) = 2/3
    elseif n(i) == -1 then
        x_delta(i) = 1
    elseif n(i) == 1 | n(i) == 2 | n(i) == 3 then
        x_delta(i) = 1
    else
        x_delta(i) = 0
    end
end

// Cach 2: Bieu dien bang u(n)
x_step = zeros(n);
for i = 1:length(n)
    u_n_3 = 1; if n(i) < -3 then u_n_3 = 0; end
    u_n = 1; if n(i) < 0 then u_n = 0; end
    u_n1 = 1; if n(i) < 1 then u_n1 = 0; end
    u_n4 = 1; if n(i) < 4 then u_n4 = 0; end
    
    x_step(i) = (1 + n(i)/3) * (u_n_3 - u_n) + 1 * (u_n1 - u_n4)
end

subplot(2,1,1);
plot2d3(n, x_delta, style=6, rect=[-5.5, -0.2, 5.5, 1.2]);
plot(n, x_delta, 'k.', 'markersize', 12);
xtitle('Cau (e): Bieu dien bang tong cac xung don vi delta(n)', 'n', 'x(n)');
xgrid();

subplot(2,1,2);
plot2d3(n, x_step, style=7, rect=[-5.5, -0.2, 5.5, 1.2]);
plot(n, x_step, 'k.', 'markersize', 12);
xtitle('Cau (e): Bieu dien bang ham bac thang u(n)', 'n', 'x(n)');
xgrid();

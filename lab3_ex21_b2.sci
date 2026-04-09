function y = x(arg)
    y = 0
    if (arg >= -3 & arg <= -1) then
        y = 1 + arg/3
    elseif (arg > 0 & arg <= 3) then
        y = 1
    else
        y = 0
    end
endfunction

n = -8:8;
x_val = zeros(n);

for i = 1:length(n)
    arg = -n(i) - 4
    x_val(i) = x(arg)
end

disp('x(-n-4) = ');
disp(x_val);

plot2d3(n, x_val, style=4, rect=[-8.5, -0.2, 8.5, 1.2]);
plot(n, x_val, 'g.', 'markersize', 12);
xtitle('Cau (b2): Delay 4 mau truoc roi fold: x(-n-4)', 'n', 'x(-n-4)');
xgrid();

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
x_b1 = zeros(n);
x_b2 = zeros(n);
x_c = zeros(n);

for i = 1:length(n)
    x_b1(i) = x(-n(i) + 4)
    x_b2(i) = x(-n(i) - 4)
    x_c(i) = x(-n(i) + 4)
end

disp('n        (b1): x(-n+4)    (b2): x(-n-4)    (c): x(-n+4)');
disp('--------------------------------------------------');
for i = 1:length(n)
    printf('%3d      %6.3f          %6.3f          %6.3f\n', n(i), x_b1(i), x_b2(i), x_c(i));
end

disp(' ');
disp('Ket luan:');
disp('- (b1) va (c) giong nhau.');
disp('- (b2) khac (b1) va (c).');
disp('- Quy tac: x(-n+k) = fold(x(n)) roi delay k mau.');
disp('- Hay: x(-n+k) = delay -k mau roi fold.');

subplot(3,1,1);
plot2d3(n, x_b1, style=3);
plot(n, x_b1, 'r.', 'markersize', 10);
xtitle('(b1): Fold -> delay: x(-n+4)', 'n', '');
xgrid();

subplot(3,1,2);
plot2d3(n, x_b2, style=4);
plot(n, x_b2, 'g.', 'markersize', 10);
xtitle('(b2): Delay -> fold: x(-n-4)', 'n', '');
xgrid();

subplot(3,1,3);
plot2d3(n, x_c, style=5);
plot(n, x_c, 'm.', 'markersize', 10);
xtitle('(c): Truc tiep x(-n+4)', 'n', '');
xgrid();

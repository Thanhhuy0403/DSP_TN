x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

H = zeros(Ny, Nx);
for i = 1:Ny
    for j = 1:Nx
        k = i - j;
        if (k >= 0) & (k < Nh) then
            H(i, j) = h(k+1);
        end
    end
end

y = H * x';

disp('Phương pháp ma trận:');
disp('y(n) = ');
disp(y');

y_conv = conv(x, h);
disp('Kiểm tra với hàm conv():');
disp(y_conv);

x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

y = zeros(1, Ny);

for n = 0:Ny-1
    for k = 0:Nx-1
        if (n-k >= 0) & (n-k < Nh) then
            y(n+1) = y(n+1) + x(k+1) * h(n-k+1);
        end
    end
end

disp('Phương pháp gấp và dịch chuyển:');
disp('y(n) = ');
disp(y);

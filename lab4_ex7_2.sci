x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

N = length(x);

y = zeros(1, N);

for n = 0:N-1
    for k = 0:N-1
        temp = n - k;
        idx = temp - floor(temp / N) * N;
        if idx < 0 then
            idx = idx + N;
        end
        idx = int(idx);
        y(n+1) = y(n+1) + h(k+1) * x(idx+1);
    end
end

disp('Ket qua tich chap vong tron (phuong phap gap va dich):');
disp(y);

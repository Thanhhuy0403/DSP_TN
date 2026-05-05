clf();
scf(0);

// Tao truc tan so
N = 1024;
w = linspace(0, 2*%pi, N);

H = zeros(1, N);
for i = 1:N
    e_jw = exp(-%i * w(i));
    H(i) = 1 / (1 + 0.1 * e_jw + 0.2 * e_jw^2);
end

// Bien do va pha
Amplitude = abs(H);
Phase = atan(imag(H), real(H));

// Ve pho bien do
subplot(2,1,1);
plot(w, Amplitude, 'b-', 'LineWidth', 1.5);
title('Pho bien do cua he thong y(n) + 0.1y(n-1) + 0.2y(n-2) = x(n)');
xlabel('Tan so (rad/mau)');
ylabel('|H|');
xgrid();

// Ve pho pha
subplot(2,1,2);
plot(w, Phase, 'r-', 'LineWidth', 1.5);
title('Pho pha cua he thong');
xlabel('Tan so (rad/mau)');
ylabel('Pha cua H (rad)');
xgrid();

show_window();

clf();
scf(0);

// Tao tin hieu
N = 4;                       // 4 mau tu n=0 den n=3
n = 0:N-1;
x2 = [1, 1, 1, 1];           // x2(n) = 1 cho n = 0,1,2,3

// Tinh FFT
X2 = fft(x2, 1);
w = linspace(0, 2*%pi, N);

// Bien do va pha
Amplitude = abs(X2);
Phase = atan(imag(X2), real(X2));

// Ve pho bien do
subplot(2,1,1);
plot(w, Amplitude, 'b-o', 'LineWidth', 1.5);
title('Pho bien do cua x2(n) = delta(n) + delta(n-1) + delta(n-2) + delta(n-3)');
xlabel('Tan so (rad/mau)');
ylabel('Bien do');
xgrid();

// Ve pho pha
subplot(2,1,2);
plot(w, Phase, 'r-o', 'LineWidth', 1.5);
title('Pho pha cua x2(n) = delta(n) + delta(n-1) + delta(n-2) + delta(n-3)');
xlabel('Tan so (rad/mau)');
ylabel('Pha (rad)');
xgrid();

show_window();
